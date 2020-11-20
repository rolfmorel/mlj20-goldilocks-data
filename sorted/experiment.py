#!/usr/bin/env python
import sys
import random
import numpy as np
sys.path.append('../')
import common

def gen_pos():
    x = sorted(common.gen_list())
    return f'f({x})'

def gen_neg():
    while True:
        x = common.gen_list()
        y = sorted(x)
        z = list(np.random.permutation(x))
        if y != z:
            return f'f({z})'