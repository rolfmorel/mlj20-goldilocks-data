#!/usr/bin/env python
import sys
import random
sys.path.append('../')
import common

def add_last(xs):
    return [xs[0],xs[0],xs[0]] + xs

def gen_pos():
    x = common.gen_list()
    y = add_last(x)
    return f'f({x},{y})'

def gen_neg():
    x = common.gen_list()
    y = x
    return f'f({x},{y})'

# common.gen_data(gen_pos, gen_neg)