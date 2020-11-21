#!/usr/bin/env python

import os
import sys
import json
import time
import random
import popper.entry_point
import multiprocessing
import numpy as np
import scipy.stats as stats
import multiprocessing as mp
sys.path.append('../')
import common

TIMEOUT = 60
EVAL_TIMEOUT = 0.01
NUM_TRIALS = 10
MODES_FILE = 'modes.pl'
BK_FILE = '../bk.pl'
GROUND_CONSTRAINTS = False
MAX_LITERALS = 20
NUM_CPUS = 8
NUM_TRAIN_EXAMPLES = 10
NUM_TEST_EXAMPLES = 1000
# MAX_LIST_SIZE = 50
MAX_ELEMENT = 1000

trials = list(range(1,NUM_TRIALS+1))
# trials = [1,2]
# systems = ['popper', 'metagol', 'unconstrained']
# systems = ['popper','metagol']
systems = ['popper']
sizes = [50,100,150,200,250,300,350,400,450,500]
jobs = [(system, size, trial) for system in systems for size in sizes for trial in trials]

def get_train_data_file(size, trial):
    return f'data/train/{size}-{trial}.pl'

def get_test_data_file(size, trial):
    return f'data/test/{size}-{trial}.pl'

def get_prog_file(system, size, trial):
    return f'programs/{system}/{size}-{trial}.pl'

def get_results_file(system, size, trial):
    return f'results/{system}/{size}-{trial}.pl'

def last(xs):
    return xs[-1]

def gen_list(size):
    return [random.randint(1, MAX_ELEMENT+1) for i in range(size)]

def gen_pos(size):
    x = gen_list(size)
    y = last(x)
    return (x, y)

def gen_neg(size):
    x = gen_list(size)
    vs = [v for v in x[:-1] if v != x[-1]]
    if vs == []:
        rands = [i for i in range(1, MAX_ELEMENT+1) if i != x[-1]]
        vs.append(np.random.choice(rands,1)[0])
    y = np.random.choice(vs,1)[0]
    return (x, y)

def gen_data_(size, trial):
    # train data
    with open(get_train_data_file(size, trial), 'w') as f:
        for i in range(NUM_TRAIN_EXAMPLES):
            (x, y) = gen_pos(size)
            f.write(f'pos(f({x},{y})).\n')
        for i in range(NUM_TRAIN_EXAMPLES):
            (x, y) = gen_neg(size)
            f.write(f'neg(f({x},{y})).\n')
    # test data
    with open(get_test_data_file(size, trial), 'w') as f:
        for i in range(NUM_TEST_EXAMPLES):
            (x, y) = gen_pos(size)
            f.write(f'pos(f({x},{y})).\n')
        for i in range(NUM_TEST_EXAMPLES):
            (x, y) = gen_neg(size)
            f.write(f'neg(f({x},{y})).\n')

def gen_data():
    for size in sizes:
        for trial in trials:
            gen_data_(size, trial)

def save_prog(prog, filename):
    with open(filename, 'w') as f:
        f.write('\n'.join(prog) + '\n')

def call_metagol(train_file):
    load_files = ['experiment', train_file]
    t1 = time.time()
    prog = common.call_prolog(load_files, 'run', TIMEOUT)
    t2 = time.time()
    d = f'%time,{t2-t1}'
    if prog == None:
        return [d]
    return [x for x in prog.split('\n') if ':-' in x] + [d]

def call_popper(system, train_file):
    no_pruning = True
    if system == 'popper':
        no_pruning = False
    t1 = time.time()
    (prog, context) = popper.entry_point.run_experiment('modes.pl', BK_FILE, train_file, MAX_LITERALS, EVAL_TIMEOUT, GROUND_CONSTRAINTS, no_pruning, TIMEOUT, debug=False)
    t2 = time.time()
    d = f'%time,{t2-t1}'
    if prog == None or prog == False:
        return [d]
    return prog + [d]

def learn_(args):
    (system, size, trial) = args
    train_file = get_train_data_file(size, trial)
    prog = None
    if system == 'metagol':
        prog = call_metagol(train_file)
    else:
        prog = call_popper(system, train_file)
    save_prog(prog, get_prog_file(system, size, trial))

def learn():
    list(common.parmap(learn_, jobs))

def test_(args):
    (system, size, trial) = args
    with open(get_results_file(system, size, trial), 'w') as f:
        res = common.call_prolog([BK_FILE, get_test_data_file(size, trial), get_prog_file(system, size, trial)], 'test')
        if res != None:
            f.write(res)

def evaluate():
    list(common.parmap(test_, jobs))

def get_accs_(system, size, trial):
    with open(get_results_file(system, size, trial), 'r') as f:
        return [int(line.split(',')[1]) for line in f if line.startswith('acc')]

def get_accs(system, size):
    accs = []
    for trial in trials:
        accs.append(np.mean(get_accs_(system, size, trial)))
    return int(np.mean(accs)*100), int(stats.sem(accs)*100)

def get_times_(system, size, trial):
    prog_file = get_prog_file(system, size, trial)
    if not os.path.exists(prog_file):
        return timeout
    with open(prog_file, 'r') as f:
        for line in f:
            if line.startswith('%time'):
                return float(line.split(',')[1])
    return timeout

def get_times(system, size):
    times = [get_times_(system, size, trial) for trial in trials]
    return round(np.mean(times),2), round(stats.sem(times),2)

def res_acc(system):
    # x = '\\tw{last}'
    print('size acc err')
    for size in sizes:
        acc,err = get_accs(system, size)
        print(f'{size} {acc} {err}')
        # x += f' & {acc} $\pm$ {err}'
    # x+= ' \\\\'
    # print(x)
def res_time(system):
    print('size time err')
    for size in sizes:
        time,err = get_times(system, size)
        print(f'{size} {time} {err}')

def results():
    for system in systems:
        print(system)
        res_acc(system)

        res_time(system)




if __name__ == '__main__':
    mp.set_start_method('fork')
    # gen_data()
    learn()
    evaluate()
    results()