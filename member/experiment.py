# !/usr/bin/env python
import sys
import random
import numpy as np
sys.path.append('../')
import common

def gen_pos():
    x = common.gen_list()
    y = np.random.choice(x,1)[0]
    return f'f({x},{y})'

def gen_neg():
    x = common.gen_list()
    rands = [i for i in range(1,common.MAX_ELEMENT+1) if i not in x]
    y = np.random.choice(rands,1)[0]
    return f'f({x},{y})'