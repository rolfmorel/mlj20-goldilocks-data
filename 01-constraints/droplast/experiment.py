#!/usr/bin/env python

import os
import sys
import json
import random
import popper.entry_point
import multiprocessing
import numpy as np
import scipy.stats as stats
sys.path.append('../../')
import common

TIMEOUT = 300
EVAL_TIMEOUT = 0.5
NUM_TRIALS = 3
MODES_FILE = 'modes.pl'
BK_FILE = 'bk.pl'
# GROUND_CONSTRAINTS = False
GROUND_CONSTRAINTS = True
MAX_LITERALS = 20
NUM_CPUS = 7
NUM_TRAIN_EXAMPLES = 5
NUM_TEST_EXAMPLES = 50
MAX_LIST_SIZE = 20
MAX_ELEMENT = 100

trials = list(range(1,NUM_TRIALS+1))
systems = ['popper', 'unconstrained']
jobs = [(system, trial) for trial in trials for system in systems]

def get_train_data_file(trial):
    return f'data/train/{trial}.pl'

def get_test_data_file(trial):
    return f'data/test/{trial}.pl'

def get_prog_file(system, trial):
    return f'programs/{system}/{trial}.pl'

def get_results_file(system, trial):
    return f'results/{system}/{trial}.pl'

def droplast(xs):
    return xs[:-1]

def gen_list():
    n = random.randint(1, MAX_LIST_SIZE+1)
    return [random.randint(1, MAX_ELEMENT+1) for i in range(n)]

def gen_pos_examples(num_examples):
    xs = [gen_list() for i in range(num_examples)]
    ys = [droplast(x) for x in xs]
    return zip(xs, ys)

def gen_neg_examples(num_examples):
    xs = [gen_list() for i in range(num_examples)]
    return zip(xs, xs)

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

def save_prog(prog, duration, filename):
    with open(filename, 'w') as f:
        # if there is a program
        if prog:
            f.write('\n'.join(prog) + '\n')
            f.write('% solved,1\n')
        else:
            f.write('% solved,0\n')
        f.write('% time,' + str(duration))

def learn_(args):
    (system, trial) = args
    no_pruning = True
    if system == 'popper':
        no_pruning = False
    # (program, context) = popper.main.run2('modes.pl', 'bk.pl', get_train_data_file(trial), MAX_LITERALS, GROUND_CONSTRAINTS, no_pruning, TIMEOUT)
    (program, context) = popper.entry_point.run_experiment('modes.pl', 'bk.pl', get_train_data_file(trial), MAX_LITERALS, EVAL_TIMEOUT, GROUND_CONSTRAINTS, no_pruning, TIMEOUT, debug=True)
    duration = context.as_dict()['_total']
    save_prog(program, duration, get_prog_file(system, trial))

def test_(args):
    (system, trial) = args
    with open(get_results_file(system, trial), 'w') as f:
        res = common.call_prolog(['evaluate.pl', 'bk.pl', get_test_data_file(trial), get_prog_file(system, trial)], 'test')
        if res != None:
            f.write(res)

def get_accs_(system, trial):
    with open(get_results_file(system, trial), 'r') as f:
        return [int(line.split(',')[1]) for line in f if line.startswith('acc')]

def get_accs(system):
    accs = []
    for trial in trials:
        accs.append(np.mean(get_accs_(system,trial)))
    return np.mean(accs), stats.sem(accs)

def get_times_(system, trial):
    prog_file = get_prog_file(system, trial)
    if not os.path.exists(prog_file):
        return timeout
    with open(prog_file, 'r') as f:
        for line in f:
            if line.startswith('% time'):
                return float(line.split(',')[1])
    return timeout

def get_times(system):
    times = [get_times_(system, trial) for trial in trials]
    return np.mean(times), stats.sem(times)

def print_results():
    for system in systems:
        print(get_accs(system), get_times(system))

# gen_data()
# for k in [1,2,3]:
#     for system in systems:
#         learn_((system, k))
#         test_((system,k))
# print_results()
learn_(('popper', 1))