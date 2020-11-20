#!/usr/bin/env python
import sys
import numpy as np
import random
sys.path.append('../')
import common

# systems = ['popper', 'unconstrained','metagol','aleph']
# name = 'dropk'

def gen_pos():
    x = common.gen_list(min_len=2)
    y = random.randint(1, len(x))
    z = x[y:]
    return f'f({x},{y},{z})'

def gen_neg():
    x = common.gen_list(min_len=2)
    y = random.randint(0, len(x))
    k = np.random.choice([i for i in range(0,len(x)) if i != y],1)[0]
    z = x[k:]
    return f'f({x},{y},{z})'

# common.gen_data(gen_pos, gen_neg)
# common.learn(name, systems)
# common.evaluate(name, systems)
# common.results(name, systems)