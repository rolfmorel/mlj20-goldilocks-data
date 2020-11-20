#!/usr/bin/env python
import sys
import random
import numpy as np
sys.path.append('../')
import common

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