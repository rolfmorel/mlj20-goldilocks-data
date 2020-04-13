#!/usr/bin/env python

import sys
import re
import time
import random
import multiprocessing
from tempfile import NamedTemporaryFile
from itertools import chain, product

import numpy as np
import scipy.stats as stats

import popper.entry_point
from popper.test.datalog import Test
from popper.util.data_types import Result


sys.path.append('../')
import common

NUM_CPUS = 3

NUM_TRIALS = 10

NUM_TRAIN_EXAMPLES = 5  # both this number of positive as well as negative examples
NUM_TEST_EXAMPLES = 1000

TIMEOUT = 600

MIN_SIZE = 4
MAX_SIZE = 20

EVAL_TIMEOUT = 0.01

MODES_FILE = 'modes.pl'
BK_FILE = 'bk.pl'
GROUND_CONSTRAINTS = False
MAX_LITERALS = 20

trials = list(range(1,NUM_TRIALS+1))
sizes = list(range(MIN_SIZE, MAX_SIZE + 1, 2))
systems = ['popper-prolog','popper-datalog','unconstrained-prolog','unconstrained-datalog','metagol','ilasp']

#systems = ['ilasp']
#sizes = [14,16]
#trials = [1,2]

jobs = [(system, size, trial) for size in sizes for trial in trials for system in systems]


def get_train_data_file(size, trial, ilasp=False):
    if ilasp:
        return f'data/train/{size}-{trial}_ilasp.pl'
    return f'data/train/{size}-{trial}.pl'

def get_test_data_file(size, trial):
    return f'data/test/{size}-{trial}.pl'

def get_prog_file(system, size, trial):
    return f'programs/{system}/{size}-{trial}.pl'

def get_results_file(system, size, trial):
    return f'results/{system}/{size}-{trial}.pl'

def save_prog(prog, filename):
    with open(filename, 'w') as f:
        if prog:
            f.write('\n'.join(prog))

###############################################################################################

def get_times(system, size):
    times = []
    for trial in trials:
        with open(get_prog_file(system, size, trial)) as f:
            for line in f:
                if line.startswith('%time'):
                    times.append(float(line.strip().split(',')[1]))
    return times

def get_accs_(system, size, trial):
    with open(get_results_file(system, size, trial), 'r') as f:
        return [int(line.split(',')[1]) for line in f if line.startswith('acc')]

def get_accs(system, size):
    accs = []
    for trial in trials:
            accs.append(np.mean(get_accs_(system, size, trial)))
    return int(np.mean(accs)*100), int(stats.sem(accs)*100)

def results():
    text = ''
    for system in systems:
        text += f"# {system}\n"

        with open(f"results/{system}-acc.table", 'w') as f:
            f.write("size acc error\n")
            for size in sizes:
                acc, err = get_accs(system, size)
                f.write(f'{size} {acc} {err}\n')

        with open(f"results/{system}-time.table", 'w') as f:
            f.write("size time error\n")
            for size in sizes:
                times = get_times(system, size)
                f.write(f'{size} {np.mean(times)} {stats.sem(times)}\n')
        text += open(f"results/{system}-acc.table").read() + open(f"results/{system}-time.table").read()
    return text

###############################################################################################

def test_(args):
    (system, size, trial) = args

    with NamedTemporaryFile('w') as tmpfile, \
         open(get_results_file(system, size, trial), 'w') as f:

        tmpfile.write(f'position(1..{size}).\n')
        tmpfile.write(open('asp_bk.pl').read())
        tmpfile.flush()

        test = Test(None, tmpfile.name)
        prog = open(get_prog_file(system, size, trial)).read()
        test.assert_ordered_program(prog, code=True)

        pos_exs, neg_exs = popper.input.parse_examples(get_test_data_file(size, trial))
        for ex, res in chain(product(pos_exs, [Result.Success]),
                             product(neg_exs, [Result.Failure])):
            f.write('acc,')
            if test.evaluate(ex) == res:
                f.write('1\n')
            else:
                f.write('0\n')

def evaluate():
    list(common.parmap(test_, jobs, NUM_CPUS))

###############################################################################################

def call_ilasp(size, trial):
    with NamedTemporaryFile('w') as tmpfile, \
         open(get_train_data_file(size, trial, ilasp=True)) as data_file, \
         open('ilasp.pl') as bk_file:
        for line in (data_file.readlines() + bk_file.readlines()):
            tmpfile.write(line)
        tmpfile.flush()

        t1 = time.time()
        output = common.call_asp(' '.join(['ilasp', 
            '--clingo5', '--version=2', #'-s',
            '-ml=2', '--max-rule-length=3',
            '--no-constraints', '--no-aggregates',
            tmpfile.name]), timeout=TIMEOUT)
        t2 = time.time()

        prog = []
        if output != None:
            prog = list(filter(lambda line: ':-' in line, output.split('\n')))
        d = f'%time,{t2-t1}'

        return prog + [d]

def call_metagol(size, trial):
    load_files = ['metagol.pl', get_train_data_file(size, trial)]
    t1 = time.time()
    prog = common.call_prolog(load_files, 'run.\n', TIMEOUT)
    t2 = time.time()
    d = f'%time,{t2-t1}'
    if prog == None:
        return [d]
    return [x for x in prog.split('\n') if ':-' in x] + [d]

def call_popper(system, size, trial):
    no_pruning = True
    if 'popper' in system:
        no_pruning = False
    tester = system.split('-')[1]
    bk_filename = 'asp_bk.pl' if tester == 'datalog' else 'bk.pl'
    with NamedTemporaryFile() as tmp_bk, \
         open(bk_filename) as bk_file:
        tmp_bk.write(f"size({size}).\n".encode())
        for i in range(1, size+1):
            tmp_bk.write(f'position({i}).\n'.encode())
        tmp_bk.write(bk_file.read().encode())
        tmp_bk.flush()

        t1 = time.time()
        (prog, context) = popper.entry_point.run_experiment('modes.pl',
                tmp_bk.name, get_train_data_file(size, trial), MAX_LITERALS, EVAL_TIMEOUT,
                GROUND_CONSTRAINTS, no_pruning, TIMEOUT, debug=True, tester=tester)
        t2 = time.time()

        d = f'%time,{t2-t1}'
        if prog == None or prog == False:
            return [d]
        return prog + [d]

def learn_(args):
    (system, size, trial) = args
    prog = None
    if system == 'metagol':
        prog = call_metagol(size, trial)
    elif system == 'ilasp':
        prog = call_ilasp(size, trial)
    else:
        prog = call_popper(system, size, trial)
    save_prog(prog, get_prog_file(system, size, trial))

def learn():
    list(common.parmap(learn_, jobs, NUM_CPUS))

###############################################################################################

# random x/y coordinate
def rand_coord(size):
    x = random.randint(1, size)
    y = random.randint(1, size)
    return x, y

def gen_pos_example(size):
    start_x, start_y = rand_coord(size - 1)
    end_x, end_y = start_x, size

##    start_state = f'w({start_x},{start_y},{start_x},{start_y},0)'
##    end_state = f'w({end_x},{end_y},{end_x},{end_y},0)'
    start_state = f'w({start_x},{start_y})'
    end_state = f'w({end_x},{end_y})'
    return f'f({start_state},{end_state})'

def gen_neg_example(size):
    start_x, start_y = rand_coord(size - 1)
    #end_x, end_y = rand_coord(size - 1)
    end_x, end_y = random.randint(1, size-1), size
    if end_x >= start_x:
        end_x += 1

##    start_state = f'w({start_x},{start_y},{start_x},{start_y},0)'
##    end_state = f'w({end_x},{end_y},{end_x},{end_y},0)'
    start_state = f'w({start_x},{start_y})'
    end_state = f'w({end_x},{end_y})'
    return f'f({start_state},{end_state})'

def gen_data_(size, trial):
    # train data
    with open(get_train_data_file(size, trial), 'w') as f, \
            open(get_train_data_file(size, trial, ilasp=True), 'w') as f_ilasp:
        f.write(f'size({size}).\n')
        f.write(f'position(1..{size}).\n')
        poss = [gen_pos_example(size) for _ in range(NUM_TRAIN_EXAMPLES)]
        negs = [gen_neg_example(size) for _ in range(NUM_TRAIN_EXAMPLES)]
        for example in poss:
            f.write(f'pos({example}).\n')
        for example in negs:
            f.write(f'neg({example}).\n')

        f_ilasp.write(f'size({size}).\n')
        f_ilasp.write(f'position(1..{size}).\n')
        f_ilasp.write(f"#pos(p1, {{{','.join(poss)}}}, {{{','.join(negs)}}}).\n")
    # test data
    with open(get_test_data_file(size, trial), 'w') as f:
        f.write(f'size({size}).\n')
        f.write(f'position(1..{size}).\n')
        for _ in range(NUM_TEST_EXAMPLES):
            example = gen_pos_example(size)
            f.write(f'pos({example}).\n')
        for _ in range(NUM_TEST_EXAMPLES):
            example = gen_neg_example(size)
            f.write(f'neg({example}).\n')

def gen_data():
    for size in sizes:
        for trial in trials:
            gen_data_(size, trial)

gen_data()
learn()
evaluate()
text = results()
print(text)
