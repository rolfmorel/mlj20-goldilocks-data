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
sys.path.append('../')
import common

TIMEOUT = 120
EVAL_TIMEOUT = 0.1
NUM_TRIALS = 10
MODES_FILE = 'modes.pl'
BK_FILE = '../bk.pl'
GROUND_CONSTRAINTS = False
MAX_LITERALS = 20
NUM_CPUS = 7
NUM_TRAIN_EXAMPLES = 10
NUM_TEST_EXAMPLES = 1000
MAX_LIST_SIZE = 50
MAX_ELEMENT = 100

trials = list(range(1,NUM_TRIALS+1))
# systems = ['popper', 'unconstrained', 'metagol']
# systems = ['popper']
# systems = ['unconstrained']
systems = ['metagol']
jobs = [(system, trial) for trial in trials for system in systems]

def get_train_data_file(trial):
    return f'data/train/{trial}.pl'

def get_test_data_file(trial):
    return f'data/test/{trial}.pl'

def get_prog_file(system, trial):
    return f'programs/{system}/{trial}.pl'

def get_results_file(system, trial):
    return f'results/{system}/{trial}.pl'

def gen_list():
    n = random.randint(0, MAX_LIST_SIZE+1)
    return [random.randint(1, MAX_ELEMENT+1) for i in range(n)]

def gen_pos_examples(num_examples):
    xs = [gen_list() for i in range(num_examples)]
    ys = [len(x) for x in xs]
    return zip(xs, ys)

def gen_neg_examples(num_examples):
    xs = [gen_list() for i in range(num_examples)]
    ys = []
    for x in xs:
        rands = [i for i in range(1, MAX_ELEMENT+1) if i != len(x)]
        if len(x) != 0:
            rands.append(0)
        ys.append(np.random.choice(rands,1)[0])
    # ys = [len(x) -1 if bool(random.getrandbits(1)) else len(x) +1 for x in xs]
    return zip(xs, ys)

def gen_data_(trial):
    # train data
    with open(get_train_data_file(trial), 'w') as f:
        for (x, y) in gen_pos_examples(NUM_TRAIN_EXAMPLES):
            f.write(f'pos(f({x},{y})).\n')
        for (x, y) in gen_neg_examples(NUM_TRAIN_EXAMPLES):
            f.write(f'neg(f({x},{y})).\n')
    # test data
    with open(get_test_data_file(trial), 'w') as f:
        for (x, y) in gen_pos_examples(NUM_TEST_EXAMPLES):
            f.write(f'pos(f({x},{y})).\n')
        for (x, y) in gen_neg_examples(NUM_TEST_EXAMPLES):
            f.write(f'neg(f({x},{y})).\n')

def gen_data():
    for trial in trials:
        gen_data_(trial)

def save_prog(prog, filename):
    with open(filename, 'w') as f:
        f.write('\n'.join(prog) + '\n')

def call_metagol(trial):
    load_files = ['experiment', get_train_data_file(trial)]
    t1 = time.time()
    prog = common.call_prolog(load_files, 'run', TIMEOUT)
    t2 = time.time()
    d = f'%time,{t2-t1}'
    if prog == None:
        return [d]
    return [x for x in prog.split('\n') if ':-' in x] + [d]

def call_metagol2(trial):
    load_files = ['experiment2', get_train_data_file(trial)]
    t1 = time.time()
    prog = common.call_prolog(load_files, 'run', TIMEOUT)
    t2 = time.time()
    d = f'%time,{t2-t1}'
    if prog == None:
        return [d]
    return [x for x in prog.split('\n') if ':-' in x] + [d]

def call_popper(system, trial):
    no_pruning = True
    if system == 'popper':
        no_pruning = False
    t1 = time.time()
    (prog, context) = popper.entry_point.run_experiment('modes.pl', BK_FILE, get_train_data_file(trial), MAX_LITERALS, EVAL_TIMEOUT, GROUND_CONSTRAINTS, no_pruning, TIMEOUT, debug=False)
    t2 = time.time()
    d = f'%time,{t2-t1}'
    if prog == None or prog == False:
        return [d]
    return prog + [d]

def learn_(args):
    (system, trial) = args
    prog = None
    if system == 'metagol':
        prog = call_metagol(trial)
    else:
        prog = call_popper(system, trial)
    save_prog(prog, get_prog_file(system, trial))

def learn():
    list(common.parmap(learn_, jobs, NUM_CPUS))

def test_(args):
    (system, trial) = args
    with open(get_results_file(system, trial), 'w') as f:
        res = common.call_prolog([BK_FILE, get_test_data_file(trial), get_prog_file(system, trial)], 'test')
        if res != None:
            f.write(res)

def evaluate():
    list(common.parmap(test_, jobs, NUM_CPUS))

def get_accs_(system, trial):
    with open(get_results_file(system, trial), 'r') as f:
        return [int(line.split(',')[1]) for line in f if line.startswith('acc')]

def get_accs(system):
    accs = []
    for trial in trials:
        accs.append(np.mean(get_accs_(system,trial)))
    return int(np.mean(accs)*100), int(stats.sem(accs)*100)

def get_times_(system, trial):
    prog_file = get_prog_file(system, trial)
    if not os.path.exists(prog_file):
        return timeout
    with open(prog_file, 'r') as f:
        for line in f:
            if line.startswith('%time'):
                return float(line.split(',')[1])
    return timeout

def get_times(system):
    times = [get_times_(system, trial) for trial in trials]
    return round(np.mean(times),2), round(stats.sem(times),2)

def results():
    x = 'Len'
    for system in systems:
        acc,err = get_accs(system)
        x += f' & {acc} $\pm$ {err}'
    x+= ' \\\\'
    print(x)

    x = 'Len'
    for system in systems:
        time,err = get_times(system)
        x += f' & {time} $\pm$ {err}'
    x+= ' \\\\'
    print(x)

# gen_data()
# learn()
evaluate()
results()

# learn_(('popper',1))