#!/usr/bin/env python
import sys
import random
import numpy as np
sys.path.append('../')
import common

systems = ['popper', 'unconstrained','metagol','aleph']
# systems = ['metagol']
name = 'last'

def gen_pos():
    x = common.gen_list(min_len=1)
    y = x[-1]
    return f'f({x},{y})'

def gen_neg():
    arr = common.gen_list(min_len=3)
    vs = [x for x in arr[:-1] if x != arr[-1]]
    if vs == []:
        rands = [i for i in range(1, MAX_ELEMENT+1) if i != arr[-1]]
        y = np.random.choice(rands,1)[0]
    else:
        y = np.random.choice(vs,1)[0]
    return f'f({arr},{y})'

# common.gen_data(gen_pos, gen_neg)
# common.learn(name, systems)
common.evaluate(name, systems)
common.results(name, systems)
