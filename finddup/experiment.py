#!/usr/bin/env python
import sys
import random
import numpy as np
sys.path.append('../')
import common

systems = ['popper', 'unconstrained','metagol','aleph']
# systems = ['metagol']
name = 'finddup'

def gen_pos():
    x = common.gen_list(min_len=2)
    y = np.random.choice(x,1)[0]
    x = list(np.random.permutation(x + [y]))
    return f'f({x},{y})'

def gen_neg():
    x = common.gen_list(min_len=3)
    rands = [i for i in x if x.count(i) < 2]
    y = np.random.choice(rands,1)[0]
    return f'f({x},{y})'

# common.gen_data(gen_pos, gen_neg)
# common.learn(name, systems)
common.evaluate(name, systems)
common.results(name, systems)
