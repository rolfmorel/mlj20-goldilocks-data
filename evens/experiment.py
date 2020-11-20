#!/usr/bin/env python
import sys
import numpy as np
import random
sys.path.append('../')
import common

systems = ['popper', 'unconstrained','metagol','aleph']
name = 'evens'
def gen_even_list():
    evens = [x for x in range(1, common.MAX_ELEMENT+1) if x % 2 == 0]
    n = random.randint(2, common.MAX_LIST_SIZE+1)
    return list(np.random.choice(evens, n))

def gen_pos():
    x = gen_even_list()
    return f'f({x})'

def gen_neg():
    odds = [x for x in range(1, common.MAX_ELEMENT+1) if x % 2 == 1]
    xs = gen_even_list()
    num_mutations = random.randint(1, len(xs))
    # print(len(xs), num_mutations)
    changes = set(np.random.choice(len(xs), num_mutations, replace=False))
    out = []
    for i, x in enumerate(xs):
        if i in changes:
            out.append(np.random.choice(odds,1)[0])
        else:
            out.append(x)
    return f'f({out})'

# common.gen_data(gen_pos, gen_neg)
# common.learn(name, systems)
# common.evaluate(name, systems)
# common.results(name, systems)