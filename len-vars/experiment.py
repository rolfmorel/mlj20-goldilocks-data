#!/usr/bin/env python

import os
import sys
import json
import time
import random
import popper.entry_point
import multiprocessing
import numpy as np
from tempfile import NamedTemporaryFile
import scipy.stats as stats
sys.path.append('../')
import common

TIMEOUT = 60
EVAL_TIMEOUT = 0.01
NUM_TRIALS = 10
BK_FILE = '../bk.pl'
GROUND_CONSTRAINTS = False
MAX_LITERALS = 20
NUM_CPUS = 10
NUM_TRAIN_EXAMPLES = 10
NUM_TEST_EXAMPLES = 1000
MAX_LIST_SIZE = 50
MAX_ELEMENT = 100

trials = list(range(1,NUM_TRIALS+1))
# trials = [1]
systems = ['popper']
sizes = list(range(4,14))
# sizes = [12]
jobs = [(system, size, trial) for system in systems for size in sizes for trial in trials]

def get_train_data_file(trial):
    return f'data/train/{trial}.pl'

def get_test_data_file(trial):
    return f'data/test/{trial}.pl'

def get_prog_file(system, size, trial):
    return f'programs/{system}/{size}-{trial}.pl'

def get_results_file(system, size, trial):
    return f'results/{system}/{size}-{trial}.pl'

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
    # # test data
    # with open(get_test_data_file(trial), 'w') as f:
    #     for (x, y) in gen_pos_examples(NUM_TEST_EXAMPLES):
    #         f.write(f'pos(f({x},{y})).\n')
    #     for (x, y) in gen_neg_examples(NUM_TEST_EXAMPLES):
    #         f.write(f'neg(f({x},{y})).\n')

def gen_data():
    for trial in trials:
        gen_data_(trial)

def save_prog(prog, filename):
    with open(filename, 'w') as f:
        f.write('\n'.join(prog) + '\n')

def call_popper(size, trial):
    no_pruning = False
    with NamedTemporaryFile('w') as tmpfile:
        tmpfile.write(open('modes.pl').read() + '\n')
        tmpfile.write(f'max_vars({size}).\n')
        tmpfile.flush()

        t1 = time.time()
        (prog, context) = popper.entry_point.run_experiment(tmpfile.name, BK_FILE, get_train_data_file(trial), MAX_LITERALS, EVAL_TIMEOUT, GROUND_CONSTRAINTS, no_pruning, timeout=TIMEOUT, debug=False)
        t2 = time.time()
        d = t2-t1
        if d > TIMEOUT:
            d = TIMEOUT
        d = f'%time,{d}'
        if prog == None or prog == False:
            return [d]
        return prog + [d]

def learn_(args):
    (system, size, trial) = args
    prog = call_popper(size, trial)
    save_prog(prog, get_prog_file(system, size, trial))

def learn():
    list(common.parmap(learn_, jobs, NUM_CPUS))

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

def results():
    xs = []
    ys = []

    for system in systems:
        print('size time error')
        for size in sizes:
            time,err = get_times(system, size)
            print(size, time, err)

# gen_data()
# learn()
results()
