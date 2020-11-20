#!/usr/bin/env python
import sys
import random
sys.path.append('../')
import common

def droplast(xs):
    return xs[:-1]

def gen_pos():
    x = common.gen_list(min_len=2)
    y = droplast(x)
    return f'f({x},{y})'

def gen_neg():
    x = common.gen_list(min_len=2)
    return f'f({x},{x})'