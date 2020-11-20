#!/usr/bin/env python
import sys
import random
import numpy as np
sys.path.append('../')
import common

def gen_pos():
    x = common.gen_list()
    y = len(x)
    return f'f({x},{y})'

def gen_neg():
    x = common.gen_list()
    rands = [i for i in range(1, common.MAX_ELEMENT+1) if i != len(x)]
    if len(x) != 0:
        rands.append(0)
    y = np.random.choice(rands,1)[0]
    return f'f({x},{y})'