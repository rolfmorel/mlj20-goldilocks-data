#!/usr/bin/env python

import json
import popper.main
import multiprocessing
import numpy as np
import scipy.stats as stats

TIMEOUT = 120
NUM_TRIALS = 2
MODES_FILE = 'modes.pl'
BK_FILE = 'bk.pl'
GROUND_CONSTRAINTS = False
MAX_LITERALS = 20
NUM_CPUS = 7

trials = list(range(1,NUM_TRIALS+1))
systems = ['popper', 'unconstrained']
jobs = [(system, trial) for trial in trials for system in systems]

def get_train_data_file(trial):
    return f'data/train/{trial}.pl'

def get_test_data_file(trial):
    return f'data/test/{trial}.pl'

def get_prog_file(system, trial):
    return f'programs/{system}/{trial}.pl'

def add_last(x):
    # %% add the last element to the head
    # %% f(A,B):-last(A,C),append(C,A,D).
    return [x[-1]] + x

def gen_pos_examples(num_examples):
    xs = [random.randint(1,MAX_LIST_SIZE+1) for i in range(num_examples)]
    ys = [add_last(x) for x in xs]
    return zip(xs, ys)

def gen_neg_examples(num_examples):
    xs = [random.randint(1,MAX_LIST_SIZE+1) for i in range(num_examples)]
    return zip(xs, xs)

def gen_data_(trial):
    # train data
    with open(get_train_data_file(trial)) as f:
        for (x,y) in gen_pos_examples(NUM_TRAIN_EXAMPLES):
            f.write(f'pos(f({x},{y})).\n')
        for (x,y) in gen_neg_examples(NUM_TRAIN_EXAMPLES):
            f.write(f'neg(f({x},{y})).\n')
    # test data
    with open(get_train_data_file(trial)) as f:
        for (x,y) in gen_pos_examples(NUM_TEST_EXAMPLES):
            f.write(f'pos(f({x},{y})).\n')
        for (x,y) in gen_neg_examples(NUM_TEST_EXAMPLES):
            f.write(f'neg(f({x},{y})).\n')

def gen_data():
    for trial in trials:
        gen_data()

def save_prog(prog, duration, filename):
    with open(filename, 'w') as f:
        # if there is a program
        if prog:
            f.write(prog + '\n')
            f.write('% solved,1\n')
        else:
            f.write('% solved,0\n')
        f.write('% time,' + str(duration))

def learn_(args):
    (system, trial) = args
    no_pruning = True
    if system == 'popper':
        no_pruning = False
    (program, context) = popper.main.run2('modes.pl', 'bk.pl', get_train_data_file(trial), MAX_LITERALS, GROUND_CONSTRAINTS, no_pruning, TIMEOUT)
    duration = context.as_dict()['_total']
    save_prog(program, duration, get_prog_file(system, trial))

# first trial
learn_(('popper',1))