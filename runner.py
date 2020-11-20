#!/usr/bin/env python
import sys
import common
import multiprocessing as mp

def run(name, systems):
    # print(name)
    # common.learn(name, systems)
    # common.evaluate(name, systems)
    # common.results(name, systems)
    # common.print_acc(name, systems)
    common.print_times(name, systems)

if __name__ == '__main__':
    mp.set_start_method('fork')
    # systems = ['popper', 'unconstrained', 'aleph']
    systems = ['popper']
    # systems = ['unconstrained']
    # systems = ['aleph']

    name = 'addhead'
    run(name, systems)

    name = 'dropk'
    run(name, systems)

    name = 'droplast'
    run(name, systems)

    name = 'evens'
    run(name, systems)

    name = 'finddup'
    run(name, systems)

    name = 'last'
    run(name, systems)

    name = 'len'
    run(name, systems)

    name = 'member'
    run(name, systems)

    name = 'sorted'
    run(name, systems)

    name = 'threesame'
    run(name, systems)