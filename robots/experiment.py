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
MAX_SIZE = 10
MODES_FILE = 'modes.pl'
BK_FILE = 'bk.pl'
GROUND_CONSTRAINTS = False
MAX_LITERALS = 20
NUM_CPUS = 7
NUM_TRAIN_EXAMPLES = 1
NUM_TEST_EXAMPLES = 3

trials = list(range(1,NUM_TRIALS+1))
trials = [1]
sizes = list(range(2,MAX_SIZE+1))
sizes = [3]
systems = ['popper','unconstrained','metagol']
systems = ['ilasp']
jobs = [(system, size, trial) for size in sizes for trial in trials for system in systems]


def get_train_data_file(size, trial):
    return f'data/train/{size}-{trial}.pl'

def get_test_data_file(size, trial):
    return f'data/test/{size}-{trial}.pl'

def get_prog_file(system, size, trial):
    return f'programs/{system}/{size}-{trial}.pl'

def get_results_file(system, size, trial):
    return f'results/{system}/{size}-{trial}.pl'

def parmap(func, jobs):
    if NUM_CPUS == 1:
        return map(func, jobs)
    with multiprocessing.Pool(NUM_CPUS) as p:
        return p.map(func, jobs)

# random choice whether robot is holding ball
def rand_flag():
    return random.choice([1, 0])


# def rand_state(size):
#     robo_pos = rand_coord(size)
#     ball_pos = rand_coord(size)
#     holding = rand_flag() if robo_pos == ball_pos else 0
#     return f'w({robo_pos},{ball_pos},{holding},{size})'

def gen_inputs(ilasp=False):
    positions = [f"position({i})." for i in range(size)]

def save_prog(prog, filename):
    with open(filename, 'w') as f:
        if prog:
            f.write('\n'.join(prog))

def save_results(res, filename):
    with open(filename, 'w') as f:
        f.write(res)


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

def results():
    for system in systems:
        print('size time error')
        for size in sizes:
            times = get_times(system, size)
            print(f'{size} {np.mean(times)} {stats.sem(times)}')


###############################################################################################
###############################################################################################
###############################################################################################
###############################################################################################
###############################################################################################




def call_ilasp(size, trial):
    with NamedTemporaryFile('w') as tmpfile, \
         open(get_train_data_file(size, trial)) as data_file, \
         open('ilasp.pl') as bk_file:
        pos, neg = [], []
        tmpfile.write(f"position(1..{size}).\n")
        for line in data_file.readlines():
            match = re.search('(pos|neg)\((.*)\)\.', line)
            if match:
                if match.group(1) == 'pos':
                    pos.append(match.group(2))
                else:
                    neg.append(match.group(2))
            else:
                tmpfile.write(line)
        tmpfile.write(f"#pos(p1, {{{','.join(pos)}}}, {{{','.join(neg)}}}).")
        for line in bk_file.readlines():
            tmpfile.write(line)
        tmpfile.flush()

        t1 = time.time()
        prog = common.call_asp(' '.join(['ilasp', '--clingo5', '--version=2', tmpfile.name]))
        t2 = time.time()
        d = f'%time,{t2-t1}'
        print(prog)
        # TODO: parse output
        if prog == None or prog == False:
            return [d]
        return prog + [d]

###############################################################################################

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
         open('bk.pl') as bk_file:
        tmp_bk.write(f"size({size}).\n".encode('utf-8'))
        for line in bk_file.readlines():
            print(line)
            tmp_bk.write(line.encode('utf-8'))
        tmp_bk.flush()


        t1 = time.time()
        (prog, context) = popper.entry_point.run_experiment('modes.pl', tmp_bk.name, get_train_data_file(size, trial), MAX_LITERALS, EVAL_TIMEOUT, GROUND_CONSTRAINTS, no_pruning, TIMEOUT, debug=True)
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
    list(parmap(learn_, jobs))


###############################################################################################
# random x/y coordinate
def rand_coord(size):
    x = random.randint(1, size)
    y = random.randint(1, size)
    return x, y

def gen_pos_example(size):
    start_x, start_y = rand_coord(size - 1)
    end_x, end_y = start_x + 1, start_y + 1

    start_state = f'w({start_x},{start_y},{start_x},{start_y},0)'
    end_state = f'w({end_x},{end_y},{end_x},{end_y},0)'
    return f'f({start_state},{end_state})'

def gen_neg_example(size):
    start_x, start_y = rand_coord(size - 1)
    end_x, end_y = start_x + 1, start_y + 1
    coord_to_change = random.randint(0,3)
    add_one = random.choice([1, 0])

    coords = [start_x,start_y,end_x,end_y]
    coords[coord_to_change] = coords[coord_to_change] + (1 if add_one else -1)
    start_x,start_y,end_x,end_y = coords

    start_state = f'w({start_x},{start_y},{start_x},{start_y},0)'
    end_state = f'w({end_x},{end_y},{end_x},{end_y},0)'
    return f'f({start_state},{end_state})'

def gen_data_(size, trial):
    # train data
    with open(get_train_data_file(size, trial), 'w') as f:
        f.write(f'size({size}).\n')
        for _ in range(NUM_TRAIN_EXAMPLES):
            example = gen_pos_example(size)
            f.write(f'pos({example}).\n')
        for _ in range(NUM_TRAIN_EXAMPLES):
            example = gen_neg_example(size)
            f.write(f'neg({example}).\n')
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

#gen_data()
learn()

# learn_(('popper',5,1))
#learn_(('metagol',6,1))
# all of 7
# results()
