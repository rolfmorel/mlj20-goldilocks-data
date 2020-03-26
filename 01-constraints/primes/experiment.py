#!/usr/bin/env python

import json
import popper.main
import multiprocessing
import numpy as np
import scipy.stats as stats

TIMEOUT = 120
NUM_TRIALS = 3
MAX_SIZE = 12
MODES_FILE = 'modes.pl'
BK_FILE = 'bk.pl'
GROUND_CONSTRAINTS = False
MAX_LITERALS = 20
NUM_CPUS = 7

trials = list(range(1,NUM_TRIALS+1))
sizes = list(range(1,MAX_SIZE+1))
systems = ['popper', 'unconstrained']
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
        f.write(json.dumps(res))

def learn_(args):
    (system, size, trial) = args
    no_pruning = True
    if system == 'popper':
        no_pruning = False
    (program, context) = popper.main.run2('modes.pl', 'bk.pl', get_data_file(size, trial), MAX_LITERALS, GROUND_CONSTRAINTS, no_pruning, TIMEOUT)
    save_prog(program, get_prog_file(system, size, trial))
    save_results(context.as_dict(), get_results_file(system, size, trial))

def learn():
    list(parmap(learn_, jobs))

def get_times(system, size):
    times = []
    for trial in trials:
        with open(get_results_file(system, size, trial)) as f:
            info = json.loads(f.read())
            times.append(info['_total'])
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
# learn()
results()