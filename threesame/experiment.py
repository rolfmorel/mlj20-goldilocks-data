#!/usr/bin/env python
import sys
import numpy as np
import random
sys.path.append('../')
import common

systems = ['popper', 'unconstrained','metagol', 'aleph']
# systems = ['metagol']
name = 'threesame'

def gen_pos():
    n = random.randint(1, common.MAX_LIST_SIZE+1)
    xs = [random.randint(1, common.MAX_ELEMENT+1) for i in range(n)]
    x = [random.randint(1, common.MAX_ELEMENT+1)]*3 + xs
    return f'f({x})'
    # return xs

def gen_neg():
    n = random.randint(1, common.MAX_LIST_SIZE+1)
    xs = [random.randint(1, common.MAX_ELEMENT+1) for i in range(n)]
    k2 = [random.randint(1, common.MAX_ELEMENT+1) for i in range(2)]
    k3 = np.random.choice([i for i in range(1,common.MAX_ELEMENT+1) if i not in k2], 1)[0]
    x = k2 + [k3] + xs
    return f'f({x})'

# common.gen_data(gen_pos, gen_neg)
# common.learn(name, systems)
common.evaluate(name, systems)
common.results(name, systems)
