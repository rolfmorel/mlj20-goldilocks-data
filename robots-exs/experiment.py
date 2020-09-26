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

NUM_TRIALS = 10
# NUM_TRAIN_EXAMPLES = 200  # both this number of positive as well as negative examples
NUM_TEST_EXAMPLES = 1000
TIMEOUT = 60
EVAL_TIMEOUT = 0.01
MODES_FILE = 'modes.pl'
BK_FILE = 'bk.pl'
GROUND_CONSTRAINTS = False
MAX_LITERALS = 20
SIZE = 30

# trials = list(range(1,NUM_TRIALS+1))
# trials = [1,2,3,4]
# trials = [5,6,7,8,9,10]
trials = [1,2,3,4,5,6,7,8,9,10]
# sizes = [10,20,30,40,50,60,70,80,90,100]
# sizes = [100,200,300,400,500]
sizes = [1000]
# systems = ['popper-prolog']
systems = ['ilasp2']

def get_train_data_file(num_exs, trial, ilasp=False, aleph=False, prolog=False):
    if ilasp:
        if prolog:
            return f'data/train/{num_exs}-{trial}-ilasp-prolog.pl'
        return f'data/train/{num_exs}-{trial}-ilasp.pl'
    if aleph:
        return f'data/train/{num_exs}-{trial}-aleph.pl'
    return f'data/train/{num_exs}-{trial}.pl'

def get_test_data_file(num_exs, trial):
    return f'data/test/{num_exs}-{trial}.pl'

def get_prog_file(system, num_exs, trial):
    return f'programs/{system}/{num_exs}-{trial}.pl'

def get_results_file(system, num_exs, trial):
    return f'results/{system}/{num_exs}-{trial}.pl'

def save_prog(prog, filename):
    with open(filename, 'w') as f:
        if prog:
            f.write('\n'.join(prog))

def get_times(system, num_exs):
    times = []
    for trial in trials:
        with open(get_prog_file(system, num_exs, trial)) as f:
            for line in f:
                if line.startswith('%time'):
                    times.append(float(line.strip().split(',')[1]))
    return times

def get_accs_(system, num_exs, trial):
    with open(get_results_file(system, num_exs, trial), 'r') as f:
        return [int(line.split(',')[1]) for line in f if line.startswith('acc')]

def get_accs(system, num_exs):
    accs = []
    for trial in trials:
        accs.append(np.mean(get_accs_(system, num_exs, trial)))
    return int(np.mean(accs)*100), int(stats.sem(accs)*100)

def results():
    text = ''
    for system in systems:
        text += f"# {system}\n"

        with open(f"results/{system}-acc.table", 'w') as f:
            f.write("num_exs acc error\n")
            for num_exs in sizes:
                acc, err = get_accs(system, num_exs)
                f.write(f'{num_exs} {acc} {err}\n')

        with open(f"results/{system}-time.table", 'w') as f:
            f.write("num_exs time error\n")
            for num_exs in sizes:
                times = get_times(system, num_exs)
                f.write(f'{num_exs} {np.mean(times)} {stats.sem(times)}\n')
        text += open(f"results/{system}-acc.table").read() + open(f"results/{system}-time.table").read()
    return text

###############################################################################################

def test_normal(system, num_exs, trial):
     with NamedTemporaryFile('w') as tmpfile:
        tmpfile.write(f'size({SIZE}).\n')
        tmpfile.write(f'position(1..{SIZE}).\n')
        tmpfile.write(open('asp-bk.pl').read())
        tmpfile.flush()
        test = Test(None, tmpfile.name)
        prog = open(get_prog_file(system, num_exs, trial)).read()
        test.assert_program(prog, basic=True, code=True)
        pos_exs, neg_exs = popper.input.parse_examples(get_test_data_file(num_exs, trial))
        with open(get_results_file(system, num_exs, trial), 'w') as f:
            for ex, expected_res in chain(product(pos_exs, [Result.Success]),product(neg_exs, [Result.Failure])):
                f.write('acc,')
                res, _ = test.query(prog, ex)
                if res == expected_res:
                    f.write('1\n')
                else:
                    f.write('0\n')

def parse_ex(x):
        x = x[2:-1]
        xs = x.split(',w')
        s1 = xs[0]
        s2 = 'w'+xs[1]
        return (s1, s2)

def test_ex(args):
    (system, num_exs, trial, ex) = args
    (s1, s2) = parse_ex(ex)
    with NamedTemporaryFile('w') as tmpfile:
        tmpfile.write(f'size({SIZE}).\n')
        tmpfile.write(f'position(1..{SIZE}).\n')
        tmpfile.write(f'start_state({s1}).\n')
        tmpfile.write(open('asp-bk.pl').read() + '\n')
        tmpfile.flush()
        test = Test(None, tmpfile.name)
        prog = open(get_prog_file(system, num_exs, trial)).read()
        test.assert_program(prog, basic=True, code=True)
        ex = f'f({s2})'
        res, _ = test.query(prog, ex)
        return res

def test_ilasp(system, num_exs, trial):
    pos_exs, neg_exs = popper.input.parse_examples(get_test_data_file(num_exs, trial))

    with open(get_results_file(system, num_exs, trial), 'w') as f:
        jobs = [(system, num_exs, trial, ex) for ex in pos_exs]
        for res in list(common.parmap(test_ex, jobs)):
            f.write('acc,')
            if res == Result.Success:
                f.write('1\n')
            else:
                f.write('0\n')
        jobs = [(system, num_exs, trial, ex) for ex in neg_exs]
        for res in list(common.parmap(test_ex, jobs)):
            f.write('acc,')
            if res == Result.Success:
                f.write('0\n')
            else:
                f.write('1\n')

def test_(args):
    (system, num_exs, trial) = args
    if system in ('ilasp2','ilasp3'):
        test_ilasp(system, num_exs, trial)
    else:
        test_normal(system, num_exs, trial)


def evaluate():
    jobs = [(system, num_exs, trial) for num_exs in sizes for trial in trials for system in systems]
    list(map(test_, jobs))

###############################################################################################

def call_ilasp(num_exs, trial, prolog, version):
    t1 = time.time()
    output = common.call_asp(' '.join(['./ILASP3.6','--clingo5', f'--version={version}','-ml=3', '--max-rule-length=4', '-np','-ni','--simple','-nc', '-na', get_train_data_file(num_exs, trial, ilasp=True, prolog=prolog)]), timeout=TIMEOUT)
    t2 = time.time()
    prog = []
    if output != None:
        prog = list(filter(lambda line: ':-' in line, output.split('\n')))
    d = f'%time,{t2-t1}'
    return prog + [d]

def call_aleph(num_exs, trial):
    load_files = [get_train_data_file(num_exs, trial, aleph=True)]
    cmd = "induce(P),writeln('<PROG>'),numbervars(P,0,_),foreach(member(C,P),(write(C),write('.\n'))),writeln('</PROG>'),halt"
    t1 = time.time()
    prog = common.call_prolog(load_files, cmd, TIMEOUT)
    t2 = time.time()
    d = f'%time,{t2-t1}'
    if prog == None:
        return [d]
    return [x for x in prog.split('<PROG>')[1].split('</PROG>')[0].split('\n') if ':-' in x] + [d]

def call_metagol(num_exs, trial):
    load_files = ['metagol.pl', get_train_data_file(num_exs, trial)]
    t1 = time.time()
    prog = common.call_prolog(load_files, 'run.\n', TIMEOUT)
    t2 = time.time()
    d = f'%time,{t2-t1}'
    if prog == None:
        return [d]
    return [x for x in prog.split('\n') if ':-' in x] + [d]

def call_popper(system, num_exs, trial):
    no_pruning = True
    if 'popper' in system:
        no_pruning = False
    tester = system.split('-')[1]
    bk_filename = 'asp_bk.pl' if tester == 'datalog' else 'bk.pl'
    with NamedTemporaryFile() as tmp_bk:
        tmp_bk.write(f"size({SIZE}).\n".encode())
        for i in range(1, SIZE+1):
            tmp_bk.write(f'position({i}).\n'.encode())
        tmp_bk.write(open(bk_filename).read().encode())
        tmp_bk.flush()
        t1 = time.time()
        (prog, context) = popper.entry_point.run_experiment('modes.pl',
                tmp_bk.name, get_train_data_file(num_exs, trial), MAX_LITERALS, EVAL_TIMEOUT,
                GROUND_CONSTRAINTS, no_pruning, TIMEOUT, debug=False, tester=tester)
        t2 = time.time()

        d = f'%time,{t2-t1}'
        if prog == None or prog == False:
            return [d]
        return prog + [d]

def learn_(args):
    (system, num_exs, trial) = args
    prog = None
    if system == 'metagol':
        prog = call_metagol(num_exs, trial)
    elif system == 'aleph':
        prog = call_aleph(num_exs, trial)
    elif system == 'ilasp2':
        prog = call_ilasp(num_exs, trial, prolog=False, version='2i')
    elif system == 'ilasp2-prolog':
        prog = call_ilasp(num_exs, trial, prolog=True, version='2i')
    elif system == 'ilasp3':
        prog = call_ilasp(num_exs, trial, prolog=False, version='3')
    elif system == 'ilasp3-prolog':
        prog = call_ilasp(num_exs, trial, prolog=True, version='3')
    else:
        prog = call_popper(system, num_exs, trial)
    save_prog(prog, get_prog_file(system, num_exs, trial))

def learn():
    jobs = [(system, num_exs, trial) for num_exs in sizes for trial in trials for system in systems]
    list(common.parmap(learn_, jobs))

###############################################################################################

# random x/y coordinate
def rand_coord():
    x = random.randint(1, SIZE)
    y = random.randint(1, SIZE)
    return x, y

def gen_pos_example():
    start_x, start_y = rand_coord()
    if start_y == SIZE:
        start_y -= 1
    end_x, end_y = start_x, SIZE
    return ((start_x,start_y),(end_x,end_y))


def gen_neg_example():
    while True:
        start_x, start_y = rand_coord()
        if random.random() >= 0.75:
            end_x, end_y = rand_coord()
            if end_x == start_x:
                continue
            return ((start_x,start_y),(end_x,SIZE))
        else:
            end_x, end_y = rand_coord()
            if end_x == start_x and end_y == SIZE:
                continue
            return ((start_x,start_y),(end_x,end_y))

def gen_data_(num_exs, trial):
    # train data
    train_pos = [gen_pos_example() for _ in range(num_exs)]
    train_neg = [gen_neg_example() for _ in range(num_exs)]

    def fmt(example):
        ((start_x,start_y),(end_x,end_y)) = example
        s1 = f'w({start_x},{start_y})'
        s2 = f'w({end_x},{end_y})'
        return f'f({s1},{s2})'

    # WRITE POS AND NEG FOR POPPER + METAGOL
    with open(get_train_data_file(num_exs, trial), 'w') as f:
        f.write(f'size({SIZE}).\n')
        f.write(f'position(1..{SIZE}).\n')
        for ex in train_pos:
            f.write(f'pos({fmt(ex)}).\n')
        for ex in train_neg:
            f.write(f'neg({fmt(ex)}).\n')

    # WRITE POS AND NEG FOR ILASP2 + ILASP3 FOR PROLOG VERSION
    with open(get_train_data_file(num_exs, trial, ilasp=True, prolog=True), 'w') as f:
        f.write(f'size({SIZE}).\n')
        f.write(f'position(1..{SIZE}).\n')
        f.write(open('ilasp-prolog.pl').read() + '\n')
        f.write(open('asp-bk.pl').read() + '\n')
        f.write(f"#pos(p1, {{{','.join((fmt(x) for x in train_pos))}}}, {{{','.join((fmt(x) for x in train_neg))}}}).\n")

    # WRITE POS AND NEG FOR ILASP2 + ILASP3 WITH CONTEXT-DEPENDENT VERSION
    with open(get_train_data_file(num_exs, trial, ilasp=True, prolog=False), 'w') as f:
        f.write(f'size({SIZE}).\n')
        f.write(f'position(1..{SIZE}).\n')
        f.write(open('ilasp.pl').read() + '\n')
        f.write(open('asp-bk.pl').read() + '\n')
        for i, ex in enumerate(train_pos):
            ((start_x,start_y),(end_x,end_y)) = ex
            pos = f'f(w({end_x},{end_y}))'
            context = f'start_state(w({start_x},{start_y}))'
            f.write("#pos(p" + str(i) + ", {" + pos + "}, {}, {\n" + context + ".\n}).\n")

        for i, ex in enumerate(train_neg):
            ((start_x,start_y),(end_x,end_y)) = ex
            neg = f'f(w({end_x},{end_y}))'
            context = f'start_state(w({start_x},{start_y}))'
            f.write("#pos(n" + str(i) + ", {}, {" + neg + "}, {\n" + context + ".\n}).\n")

    # WRITE INPUT FOR ALEPH
    with open(get_train_data_file(num_exs, trial, aleph=True), 'w') as f:
        f.write(open('aleph.pl').read() + '\n')
        f.write(':-begin_bg.\n')
        f.write(f'size({SIZE}).\n')
        f.write(open('bk.pl').read() + '\n')
        f.write(':-end_bg.\n')
        f.write(':-begin_in_pos.\n')
        for x in train_pos:
            x = fmt(x)
            f.write(f'{x}.\n')
        f.write(':-end_in_pos.\n')
        f.write(':-begin_in_neg.\n')
        for x in train_neg:
            x = fmt(x)
            f.write(f'{x}.\n')
        f.write(':-end_in_neg.\n')

    # test data
    with open(get_test_data_file(num_exs, trial), 'w') as f:
        f.write(f'size({SIZE}).\n')
        f.write(f'position(1..{SIZE}).\n')
        for _ in range(NUM_TEST_EXAMPLES):
            x = gen_pos_example()
            x = fmt(x)
            f.write(f'pos({x}).\n')
        for _ in range(NUM_TEST_EXAMPLES):
            x = gen_neg_example()
            x = fmt(x)
            f.write(f'neg({x}).\n')

def gen_data():
    for num_exs in sizes:
        for trial in trials:
            gen_data_(num_exs, trial)

gen_data()
learn()
# evaluate()
# text = results()
# print(text)
