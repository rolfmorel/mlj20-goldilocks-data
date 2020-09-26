# !/usr/bin/env python

import sys
import time
import numpy as np
# import multiprocessing
import popper.entry_point
import scipy.stats as stats
from tempfile import NamedTemporaryFile
sys.path.append('../')
import common

# TIMEOUT = 120
TIMEOUT = 60
EVAL_TIMEOUT = 0.01
NUM_TRIALS = 10
GROUND_CONSTRAINTS = False
MAX_LITERALS = 20
MAX_SIZE = 10
ILASP = '/Users/andrew/icloud/code/ilasp/ILASP'
DEBUG = False
NUM_EXAMPLES = 200
# NUM_EXAMPLES = 5
NUM_BUTTONS = 20

trials = list(range(1,NUM_TRIALS+1))
# trials = [1,2]
tails = [1,2,3,4,5,6,7,8,9,10]
sizes = list(range(1,MAX_SIZE+1))
# TODO
# sizes = [1,2]
# sizes = [1,2,3,4,5,6,7,8,9,10]
# sizes = [1,2,3,4,5]
# sizes = [6,7,8,9,10]
# sizes = range(1,11)
# systems = ['popper']
# systems = ['metagol']
# systems = ['ilasp2']
# systems = ['unconstrained','aleph','ilasp3']
systems = ['popper','unconstrained','aleph', 'ilasp2','ilasp3','metagol']

def get_train_ex_file(size, trial, ilasp=False, aleph=False):
    if ilasp:
        return f'data/train/ex-{size}-{trial}-ilasp.pl'
    if aleph:
        return f'data/train/ex-{size}-{trial}-aleph.pl'
    return f'data/train/ex-{size}-{trial}.pl'

def get_train_bk_file(size, trial):
    return f'data/train/bk-{size}-{trial}.pl'

def get_bias_file(system, size, trial):
    return f'data/train/bias-{system}-{size}-{trial}.pl'

def get_prog_file(system, size, trial):
    return f'programs/{system}/{size}-{trial}.pl'

def get_results_file(system, size, trial):
    return f'results/{system}/{size}-{trial}.pl'

def gen_popper_bias(size, trial):
    gen_popper_bias_('popper', size, trial)

def gen_unconstrained_bias(size, trial):
    gen_popper_bias_('unconstrained', size, trial)

def gen_popper_bias_(name, size, trial):
    with open(get_bias_file(name, size, trial), 'w') as f:
        f.write('max_vars(1).\n')
        # f.write('max_body(10).\n')
        f.write(f'max_body({size}).\n')
        f.write('max_clauses(1).\n')
        f.write('modeh(f,1).\n')
        for i in range(1, NUM_BUTTONS+1):
            f.write(f'modeb(button{i},1).\n')

def gen_ilasp_bias(size, trial):
    with open(get_bias_file('ilasp', size, trial), 'w') as f:
        # f.write('#maxv(1).\n')
        f.write('#modeh(1,f, (positive)).\n')
        for i in range(1, NUM_BUTTONS+1):
            f.write(f'#modeb(1,button{i}, (positive)).\n')

def gen_metagol_bias(size, trial):
    with open(get_bias_file('metagol', size, trial), 'w') as f:
        for i in range(1, NUM_BUTTONS+1):
            f.write(f'body_pred(button{i}/1).\n')

def gen_aleph_bias(size, trial):
    with open(get_bias_file('aleph', size, trial), 'w') as f:
        f.write(':- use_module(library(aleph)).\n')
        f.write(':- if(current_predicate(use_rendering/1)).\n')
        f.write(':- use_rendering(prolog).\n')
        f.write(':- endif.\n')
        f.write(':- aleph.\n')
        f.write(':-style_check(-discontiguous).\n')
        f.write(':- aleph_set(i,6).\n')
        f.write(f':- aleph_set(clauselength,{size+1}).\n')
        f.write(':- aleph_set(nodes,5000).\n')
        f.write(':- modeh(*,f(+var)).\n')
        for i in range(1, NUM_BUTTONS+1):
            f.write(f':- modeb(*,button{i}(+var)).\n')
        for i in range(1, NUM_BUTTONS+1):
            f.write(f':- determination(f/1,button{i}/1).\n')

def gen_bias():
    for size in sizes:
        for trial in trials:
            gen_aleph_bias(size, trial)
            gen_popper_bias(size, trial)
            gen_unconstrained_bias(size, trial)
            gen_metagol_bias(size, trial)
            gen_ilasp_bias(size, trial)

def gen_data_(size, trial):
    # ALL POSSIBLE BUTTONS
    buttons = list(range(1, NUM_BUTTONS+1))
    # CHOOSE 'SIZE' BUTTONS THAT ALL POSITIVE EXAMPLES PRESS
    chosen = list(np.random.choice(buttons, size, replace=False))
    # SEPARATE THE NOT CHOSEN
    not_chosen = [i for i in buttons if i not in chosen]

    def gen_pos():
        for x in chosen:
            yield x
        # SAMPLE K NOT CHOSEN ONES
        k = NUM_BUTTONS - size
        k = np.random.randint(0, k+1)
        for x in np.random.choice(not_chosen, k, replace=False):
            yield x

    def gen_neg():
        # SAMPLE SIZE-1 CHOSEN ONES
        k = np.random.randint(0, size)
        neg_chosen1 = np.random.choice(chosen, k, replace=False)
        for x in neg_chosen1:
            yield x

        # SAMPLE NOT CHOSEN ONES
        k = np.random.randint(0, len(not_chosen)+1)
        neg_chosen2 = np.random.choice(not_chosen, k, replace=False)
        for x in neg_chosen2:
            yield x

    # bk_pos = [[]]*len(examples)
    # bk_neg = [[]]*len(examples)
    bk_pos = []
    bk_neg = []

    examples = range(1, NUM_EXAMPLES+1)

    # GEN BK
    for _ in range(len(examples)):
        bk_pos.append(list(gen_pos()))
        bk_neg.append(list(gen_neg()))

    # WRITE BK FOR POPPER, METAGOL, AND ALEPH
    with open(get_train_bk_file(size, trial), 'w') as f:
        f.write(':-style_check(-discontiguous).\n')
        for i, xs in zip(examples, bk_pos):
            for x in xs:
                f.write(f'button{x}(p{i}).\n')
        for i, xs in zip(examples, bk_neg):
            for x in xs:
                f.write(f'button{x}(n{i}).\n')

    # WRITE EX FOR POPPER AND METAGOL
    with open(get_train_ex_file(size, trial), 'w') as f:
        f.write(f'% chosen {chosen}\n')
        for i in examples:
            f.write(f'pos(f(p{i})).\n')
        for i in examples:
            f.write(f'neg(f(n{i})).\n')

    # WRITE EX AND BK FOR ILASP
    with open(get_train_ex_file(size, trial, ilasp=True), 'w') as f:
        for i, xs in enumerate(bk_pos):
            out = '#pos({f}, {}, {\n'
            for x in xs:
                out += f'button{x}.\n'
            out += '}).\n'
            f.write(out)
        for i, xs in enumerate(bk_neg):
            out = '#pos({}, {f}, {\n'
            for x in xs:
                out += f'button{x}.\n'
            out += '}).\n'
            f.write(out)
        # pos = ','.join(f'f(p{i})' for i in examples)
        # neg = ','.join(f'f(n{i})' for i in examples)
        # out = '#pos(p1, {' + pos + '}, {' + neg + '}).\n'
        # f.write(out)

    # # WRITE EX FOR ALEPH
    with open(get_train_ex_file(size, trial, aleph=True), 'w') as f:
        f.write(':-begin_in_pos.\n')
        for i in examples:
            f.write(f'f(p{i}).\n')
        f.write(':-end_in_pos.\n')
        f.write(':-begin_in_neg.\n')
        for i in examples:
            f.write(f'f(n{i}).\n')
        f.write(':-end_in_neg.\n')

    # # with open(get_train_bk_file(size, trial), 'w') as f:
    # #     for i in examples:
    # #         for x in gen_pos(f'p{i}'):
    # #             f.write(x + '\n')
    # #         for x in gen_neg(f'n{i}'):
    # #             f.write(x + '\n')

def gen_data():
    for size in sizes:
        for trial in trials:
            gen_data_(size, trial)

def save_prog(prog, filename):
    with open(filename, 'w') as f:
        if prog:
            f.write('\n'.join(prog))

def save_results(res, filename):
    with open(filename, 'w') as f:
        f.write(res)

def call_ilasp2(size, trial):
    return call_ilasp(size, trial, version=2)

def call_ilasp3(size, trial):
    return call_ilasp(size, trial, version=3)

def call_ilasp(size, trial, version):
    with NamedTemporaryFile('w') as tmpfile:
        with open(get_train_ex_file(size, trial, ilasp=True)) as f:
            for line in f.readlines():
                tmpfile.write(line)
        with open(get_train_bk_file(size, trial)) as f:
            for line in f.readlines():
                tmpfile.write(line)
        with open(get_bias_file('ilasp', size, trial)) as f:
            for line in f.readlines():
                tmpfile.write(line)
        tmpfile.flush()

        MAX_BODY = size+1

        t1 = time.time()
        if version == 2:
            version = '2i'
        prog = common.call_asp(' '.join([ILASP, '--clingo5', f'--version={version}', '--simple', '-na', '-nc', '-np', '-ni',f'-ml={MAX_BODY}', f'--max-rule-length={MAX_BODY}',tmpfile.name]), timeout=TIMEOUT)
        t2 = time.time()
        d = fix_times(t1, t2)
        # print(prog)
        if prog == None:
            return [d]
        return [x for x in prog.split('\n') if ':-' in x] + [d]

def call_aleph(size, trial):
    with NamedTemporaryFile('w') as tmpfile:
    # with open('aleph.pl', 'w') as tmpfile:
        with open(get_bias_file('aleph', size, trial)) as f:
            for line in f.readlines():
                tmpfile.write(line)
        tmpfile.write('\n')
        tmpfile.write(':-begin_bg.\n')
        with open(get_train_bk_file(size, trial)) as f:
            for line in f.readlines():
                tmpfile.write(line)
        tmpfile.write('\n')
        tmpfile.write(':-end_bg.\n')
        with open(get_train_ex_file(size, trial, aleph=True)) as f:
            for line in f.readlines():
                tmpfile.write(line)
        tmpfile.write('\n')
        tmpfile.flush()

        load_files = [tmpfile.name]
        cmd = "induce(P),writeln('<PROG>'),numbervars(P,0,_),foreach(member(C,P),(write(C),write('.\n'))),writeln('</PROG>'),halt"
        t1 = time.time()
        prog = common.call_prolog(load_files, cmd, TIMEOUT)
        t2 = time.time()
        d = fix_times(t1, t2)
        if prog == None:
            return [d]
        return [x for x in prog.split('<PROG>')[1].split('</PROG>')[0].split('\n') if ':-' in x] + [d]

def fix_times(t1, t2):
    d = t2-t1
    if d > TIMEOUT:
        d = TIMEOUT
    return f'%time,{d}'

def call_metagol(size, trial):
    load_files = ['metagol', get_train_ex_file(size, trial), get_train_bk_file(size, trial), get_bias_file('metagol', size, trial)]
    t1 = time.time()
    prog = common.call_prolog(load_files, 'run', TIMEOUT)
    t2 = time.time()
    d = fix_times(t1, t2)
    if prog == None:
        return [d]
    return [x for x in prog.split('\n') if ':-' in x] + [d]

def call_popper(system, size, trial):
    no_pruning = True
    if system == 'popper':
        no_pruning = False
    t1 = time.time()
    (prog, context) = popper.entry_point.run_experiment(
        get_bias_file(system, size, trial),
        get_train_bk_file(size, trial),
        get_train_ex_file(size, trial), MAX_LITERALS, EVAL_TIMEOUT, GROUND_CONSTRAINTS, no_pruning, TIMEOUT, DEBUG)
    t2 = time.time()
    d = fix_times(t1, t2)
    if prog == None or prog == False:
        return [d]
    return prog + [d]

def learn_(args):
    (system, size, trial) = args
    prog = None
    if system == 'metagol':
        prog = call_metagol(size, trial)
    elif system == 'ilasp2':
        prog = call_ilasp2(size, trial)
    elif system == 'ilasp3':
        prog = call_ilasp3(size, trial)
    elif system == 'aleph':
        prog = call_aleph(size, trial)
    else:
        prog = call_popper(system, size, trial)
    save_prog(prog, get_prog_file(system, size, trial))
    # save_results(str(duration), get_results_file(system, size, trial))

def learn():
    jobs = [(system, size, trial) for size in sizes for trial in trials for system in systems]
    list(common.parmap(learn_, jobs))

def get_times(system, size):
    times = []
    for trial in trials:
        with open(get_prog_file(system, size, trial)) as f:
            for line in f:
                if line.startswith('%time'):
                    times.append(float(line.strip().split(',')[1]))
                # %time,0.1964740753173828
            # times.append(info['_total'])
    return times

# # def ci95(xs):
# #     sem = stats.sem(xs)
# #     confidence = 0.95
# #     n = len(xs)
# #     return sem * stats.t.ppf((1 + confidence) / 2, n - 1)

def results():
    for system in systems:
        print(system)
        print('size time error')
        for size in sizes:
            times = get_times(system, size)
            print(f'{size} {np.mean(times)} {stats.sem(times)}')




# gen_data()
# gen_bias()
# learn()
results()