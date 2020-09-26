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

TIMEOUT = 300
EVAL_TIMEOUT = 0.1
NUM_TRIALS = 10
MODE_FILE = 'modes-ijcai20.pl'
BK_FILE = 'bk-ijcai20.pl'
GROUND_CONSTRAINTS = False
MAX_LITERALS = 20
NUM_CPUS = 1
# NUM_TRAIN_EXAMPLES = 10
# NUM_TEST_EXAMPLES = 1000
# MAX_LIST_SIZE = 20
# MAX_ELEMENT = 100
NUM_TASKS = 50

trials = list(range(1,NUM_TRIALS+1))
# systems = ['popper', 'unconstrained']
systems = ['popper']
# systems = ['unconstrained']

trials = list(range(1,NUM_TRIALS+1))
tasks = list(range(1,NUM_TASKS+1))
jobs = [(system, task, trial) for task in tasks for trial in trials for system in systems]

def get_train_data_file(task, trial):
    return f'data/train/{task}-{trial}.pl'

def get_test_data_file(task, trial):
    return f'data/test/{task}-{trial}.pl'

def get_prog_file(system, task, trial):
    return f'programs/{system}/{task}-{trial}.pl'

def get_results_file(system, task, trial):
    return f'results/{system}/{task}-{trial}.pl'

def load_probs(nowrites=True):
    dic = {}
    with open('probs.txt', 'r') as f:
        problem = 0
        for line in f:
            if line.startswith('%p'):
                problem +=1
                continue
            xs = line.strip().split('=>')
            if len(xs) > 1:
                if problem not in dic:
                    dic[problem] = []
                dic[problem].append(xs)
    return dic

# def gen_data_(dic):

def write_mlj19(task, trial, train, test):
    with open(get_train_data_file(task, trial), 'w') as f:
        for ex in train:
            a = list(ex[0].strip())
            b = list(ex[1].strip())
            f.write(f'pos(f(s({a},{b}),s(_,[]))).\n')
    with open(get_test_data_file(task, trial), 'w') as f:
        for ex in test:
            a = list(ex[0].strip())
            b = list(ex[1].strip())
            f.write(f'pos(f(s({a},{b}),s(_,[]))).\n')

def write_ijcai20(task, trial, train, test):
    # pos(w(1,7,['@','j','e','a','n','n','e']),w(_,6,['j','e','a','n','n','e'])).
    with open(get_train_data_file(task, trial), 'w') as f:
        for ex in train:
            a = list(ex[0].strip())
            b = list(ex[1].strip())
            f.write(f'pos(f(w(1,{len(a)},{a}),w(_,{len(b)},{b}))).\n')
    with open(get_test_data_file(task, trial), 'w') as f:
        for ex in test:
            a = list(ex[0].strip())
            b = list(ex[1].strip())
            f.write(f'pos(f(w(1,{len(a)},{a}),w(_,{len(b)},{b}))).\n')



def gen_data():
    dic = load_probs()
    for trial in trials:
        print_train=[]
        print_test=[]
        for task, examples in dic.items():
            if task not in tasks:
                continue
            random.shuffle(examples)
            train = examples[:5]
            test = examples[5:]
            # write_mlj19(task, trial, train, test)
            write_ijcai20(task, trial, train, test)


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

def call_popper(system, task, trial):
    no_pruning = True
    if system == 'popper':
        no_pruning = False
    t1 = time.time()
    (prog, context) = popper.entry_point.run_experiment(MODE_FILE, BK_FILE, get_train_data_file(task, trial), MAX_LITERALS, EVAL_TIMEOUT, GROUND_CONSTRAINTS, no_pruning, TIMEOUT, debug=True)
    t2 = time.time()
    d = f'%time,{t2-t1}'
    if prog == None or prog == False:
        return [d]
    return prog + [d]

def learn_(args):
    (system, task, trial) = args
    prog = None
    if system == 'metagol':
        prog = call_metagol(task, trial)
    else:
        prog = call_popper(system, task, trial)
    save_prog(prog, get_prog_file(system, task, trial))

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
    x = 'Droplast'
    for system in systems:
        acc,err = get_accs(system)
        x += f' & {acc} $\pm$ {err}'
    x+= ' \\\\'
    print(x)

    x = 'Droplast'
    for system in systems:
        time,err = get_times(system)
        x += f' & {time} $\pm$ {err}'
    x+= ' \\\\'
    print(x)

# gen_data()
# learn()
# evaluate()
# results()

learn_(('popper',2,1))