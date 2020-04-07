#!/usr/bin/env python

import sys
import re
import time
import random
import numpy as np
import multiprocessing
import popper.entry_point
import scipy.stats as stats
from tempfile import NamedTemporaryFile


sys.path.append('../')
import common

TIMEOUT = 240
EVAL_TIMEOUT = 0.1
NUM_TRIALS = 10
MAX_SIZE = 20
MODES_FILE = 'modes.pl'
BK_FILE = 'bk.pl'
GROUND_CONSTRAINTS = False
MAX_LITERALS = 20
NUM_CPUS = 3
NUM_TRAIN_EXAMPLES = 3  # both this number of positive as well as negative examples
NUM_TEST_EXAMPLES = 100

trials = list(range(1,NUM_TRIALS+1))
trials = [1,2]
sizes = list(range(3,MAX_SIZE+1))
sizes = [3,6,9,12,15,18]
systems = ['popper','unconstrained','metagol','ilasp']
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

def save_results(res, filename):
    with open(filename, 'w') as f:
        f.write(res)

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

        text += "size acc error\n"
        for size in sizes:
            acc, err = get_accs(system, size)
            text += f'{size} {acc} {err}\n'

        text += "size time error\n"
        for size in sizes:
            times = get_times(system, size)
            text += f'{size} {np.mean(times)} {stats.sem(times)}\n'
    return text

###############################################################################################

def test_(args):
    (system, size, trial) = args
    with open(get_results_file(system, size, trial), 'w') as f:
        res = common.call_prolog(['../bk.pl', BK_FILE, get_test_data_file(size, trial), get_prog_file(system, size, trial)], 'test')
        if res != None:
            f.write(res)

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
        output = common.call_asp(' '.join(['ilasp', '--clingo5', '--version=2', tmpfile.name]))
        t2 = time.time()

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
    if system == 'popper':
        no_pruning = False
    with NamedTemporaryFile() as tmp_bk, \
         open(BK_FILE) as bk_file:
        tmp_bk.write(f"size({size}).\n".encode('utf-8'))
        for line in bk_file.readlines():
            tmp_bk.write(line.encode('utf-8'))
        tmp_bk.flush()

        t1 = time.time()
        (prog, context) = popper.entry_point.run_experiment('modes.pl', tmp_bk.name, get_train_data_file(size, trial), MAX_LITERALS, EVAL_TIMEOUT, GROUND_CONSTRAINTS, no_pruning, TIMEOUT)
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
    start_x, start_y = rand_coord(size - 2)
    end_x, end_y = start_x + 2, start_y + 1

##    start_state = f'w({start_x},{start_y},{start_x},{start_y},0)'
##    end_state = f'w({end_x},{end_y},{end_x},{end_y},0)'
    start_state = f'w({start_x},{start_y})'
    end_state = f'w({end_x},{end_y})'
    return f'f({start_state},{end_state})'

def gen_neg_example(size):
    start_x, start_y = rand_coord(size - 1)
    end_x, end_y = start_x + 2, start_y + 1
    coord_to_change = random.randint(0,3)
    add_one = random.choice([0, 1])

    coords = [start_x,start_y,end_x,end_y]
    coords[coord_to_change] = coords[coord_to_change] + (1 if add_one else -1)
    start_x,start_y,end_x,end_y = coords

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
        poss = [gen_pos_example(size) for _ in range(NUM_TRAIN_EXAMPLES)]
        negs = [gen_neg_example(size) for _ in range(NUM_TRAIN_EXAMPLES)]
        for example in poss:
            f.write(f'pos({example}).\n')
        for example in negs:
            f.write(f'neg({example}).\n')

        f_ilasp.write(f'%size({size}).\n')
        f_ilasp.write(f'position(1..{size}).\n')
        f_ilasp.write(f"#pos(p1, {{{','.join(poss)}}}, {{{','.join(negs)}}}).\n")
    # test data
    with open(get_test_data_file(size, trial), 'w') as f:
        f.write(f'size({size}).\n')
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
save_results(text, 'results.txt')
