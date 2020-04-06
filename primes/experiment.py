#!/usr/bin/env python

import sys
import time
import numpy as np
import multiprocessing
import popper.entry_point
import scipy.stats as stats
sys.path.append('../')
import common

TIMEOUT = 120
EVAL_TIMEOUT = 0.1
NUM_TRIALS = 10
MAX_SIZE = 10
MODES_FILE = 'modes.pl'
BK_FILE = 'bk.pl'
GROUND_CONSTRAINTS = False
MAX_LITERALS = 20
NUM_CPUS = 7

trials = list(range(1,NUM_TRIALS+1))
sizes = list(range(1,MAX_SIZE+1))
systems = ['popper','unconstrained','metagol']
jobs = [(system, size, trial) for size in sizes for trial in trials for system in systems]

def parmap(func, jobs):
    if NUM_CPUS == 1:
        return map(func, jobs)
    with multiprocessing.Pool(NUM_CPUS) as p:
        return p.map(func, jobs)

def prime(i, primes):
    for prime in primes:
        if not (i == prime or i % prime):
            return False
    primes.add(i)
    return i

def historic(n):
    primes = set([2])
    i, p = 2, 0
    while True:
        if prime(i, primes):
            p += 1
            if p == n:
                return primes
        i += 1

def get_data_file(size, trial):
    return f'data/{size}-{trial}.pl'

def get_prog_file(system, size, trial):
    return f'programs/{system}/{size}-{trial}.pl'

def get_results_file(system, size, trial):
    return f'results/{system}/{size}-{trial}.pl'

def gen_data_(size, trial):
    filename = get_data_file(size, trial)

    # generate examples
    primes = list(historic(size))
    product = 1
    for x in primes:
        product = product*x
    examples = []
    # pos
    examples.append(f'pos(f({product})).')

    # neg
    for p in primes:
        examples.append(f'neg(f({product//p})).')
    with open(filename, 'w') as f:
        f.write('\n'.join(examples))
        # needed for popper bug
        f.write('\n')

def gen_data():
    for size in sizes:
        for trial in trials:
            gen_data_(size, trial)

def save_prog(prog, filename):
    with open(filename, 'w') as f:
        if prog:
            f.write('\n'.join(prog))

def save_results(res, filename):
    with open(filename, 'w') as f:
        f.write(res)

def call_metagol(size, trial):
    load_files = ['experiment', get_data_file(size, trial)]
    t1 = time.time()
    prog = common.call_prolog(load_files, 'run', TIMEOUT)
    t2 = time.time()
    d = f'%time,{t2-t1}'
    if prog == None:
        return [d]
    return [x for x in prog.split('\n') if ':-' in x] + [d]

def call_popper(system, size, trial):
    no_pruning = True
    if system == 'popper':
        no_pruning = False
    t1 = time.time()
    (prog, context) = popper.entry_point.run_experiment('modes.pl', 'bk.pl', get_data_file(size, trial), MAX_LITERALS, EVAL_TIMEOUT, GROUND_CONSTRAINTS, no_pruning, TIMEOUT, debug=False)
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
    else:
        prog = call_popper(system, size, trial)
    save_prog(prog, get_prog_file(system, size, trial))
    # save_results(str(duration), get_results_file(system, size, trial))

def learn():
    list(parmap(learn_, jobs))

def get_times(system, size):
    times = []
    for trial in trials:
        with open(get_prog_file(system, size, trial)) as f:
            for line in f:
                if line.startswith('%time'):
                    times.append(float(line.strip().split(',')[1]))
                # %time,0.1964740753173828
            # times.append(info['_total'])
    return times

# def ci95(xs):
#     sem = stats.sem(xs)
#     confidence = 0.95
#     n = len(xs)
#     return sem * stats.t.ppf((1 + confidence) / 2, n - 1)

def results():
    for system in systems:
        print('size time error')
        for size in sizes:
            times = get_times(system, size)
            print(f'{size} {np.mean(times)} {stats.sem(times)}')




# gen_data()
learn()

# learn_(('metagol',7,5))
# all of 7
results()