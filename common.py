import os
import random
import signal
import psutil
import time
import subprocess
import multiprocessing
import popper.entry_point
import numpy as np
import scipy.stats as stats
from tempfile import NamedTemporaryFile

# NUM_CPUS = 1
NUM_CPUS = 14
# NUM_CPUS = 6
TIMEOUT = 300
EVAL_TIMEOUT = 0.01
# NUM_TRIALS = 10
NUM_TRIALS = 5
BK_FILE = 'bk.pl'
GROUND_CONSTRAINTS = False
MAX_LITERALS = 20
NUM_TRAIN_EXAMPLES = 10
NUM_TEST_EXAMPLES = 1000
MAX_LIST_SIZE = 50
MAX_ELEMENT = 100
DEBUG = False

trials = list(range(1,NUM_TRIALS+1))

metagol_skips = ['addhead','dropk','droplast']

def get_popper_modes(name):
    return f'{os.getcwd()}/{name}/data/all_modes.pl'

def get_train_data_file(name, trial, aleph=False):
    x = f'{name}/data/train/{trial}.pl'
    if aleph:
        x = x.replace('.pl','-aleph.pl')
    return x

def get_test_data_file(name, trial):
    return f'{name}/data/test/{trial}.pl'

def get_prog_file(name, system, trial):
    return f'{name}/programs/{system}/{trial}.pl'

def get_results_file(name, system, trial):
    return f'{name}/results/{system}/{trial}.pl'

def call_(cmd, action=None, timeout=60):
    cmd = cmd.split(' ')
    p = subprocess.Popen(cmd, stdin=subprocess.PIPE, stdout=subprocess.PIPE)
    # print(cmd, action)
    if action != None:
        p.stdin.write(action.encode('utf-8'))
    try:
        output, _err = p.communicate(timeout = timeout)
        return output.decode()
    except subprocess.TimeoutExpired:
        pass
    finally:
        try:
            parent = psutil.Process(p.pid)
            for child in parent.children(recursive=True):
                child.kill()
        except psutil.NoSuchProcess:
            pass
        p.kill()

def call_asp(cmd, timeout=60):
    return call_(cmd, timeout=timeout)

def call_prolog(files, action, timeout=60):
    files = ','.join((f"'{x}'" for x in files))
    cmd = f"load_files([{files}],[silent(true)]).\n"
    cmd += action + '.'
    return call_('swipl -q', cmd, timeout)

def parmap(func, jobs, num_cups = NUM_CPUS):
    if num_cups == 1:
        return map(func, jobs)
    with multiprocessing.Pool(num_cups) as p:
        return p.map(func, jobs)

def fix_times(t1, t2):
    d = t2-t1
    if d > TIMEOUT:
        d = TIMEOUT
    return f'%TIME: {d}'

def call_popper(name, system, trial):
    no_pruning = False
    if system == 'unconstrained':
        no_pruning = True
    (prog, context) = popper.entry_point.run_experiment(
        get_popper_modes(name),
        BK_FILE, get_train_data_file(name, trial), MAX_LITERALS, EVAL_TIMEOUT, GROUND_CONSTRAINTS, no_pruning, TIMEOUT, debug=DEBUG, stats=True)
    context = context.as_dict()
    stats = ''
    stats += f"%NUMPROGS: {context['num_programs_generated']}\n"
    stats += f"%TIME: {context['_total']}\n"
    stats += f"%SOLVING: {context['generate']['solver']['solving']['_total']}\n"
    stats += f"%GROUNDING: {context['generate']['solver']['grounding']['_total']}\n"
    if prog == None or prog == False:
        return [stats]
    return prog + [stats]

def call_metagol(name, trial):
    # print(os.getcwd())
    load_files = ['experiment', get_train_data_file(name, trial)]
    t1 = time.time()
    prog = call_prolog(load_files, 'run', TIMEOUT)
    t2 = time.time()
    d = fix_times(t1, t2)
    if prog == None:
        return [d]
    return [x for x in prog.split('\n') if ':-' in x] + [d]

def call_aleph(name, trial):
    load_files = [get_train_data_file(name, trial, aleph=True)]
    cmd = "induce(P),writeln('<PROG>'),numbervars(P,0,_),foreach(member(C,P),(write(C),write('.\n'))),writeln('</PROG>'),halt"
    t1 = time.time()
    prog = call_prolog(load_files, cmd, TIMEOUT)
    t2 = time.time()
    d = fix_times(t1, t2)
    if prog == None:
        return [d]
    if '<PROG>' not in prog:
        return [d]
    return [x for x in prog.split('<PROG>')[1].split('</PROG>')[0].split('\n')] + [d]

def save_prog(prog, filename):
    with open(filename, 'w') as f:
        f.write('\n'.join(prog) + '\n')

def learn_(args):
    (name, system, trial) = args
    prog = None
    if system == 'metagol':
        prog = call_metagol(name, trial)
    elif system == 'aleph':
        prog = call_aleph(name, trial)
    else:
        prog = call_popper(name, system, trial)
    save_prog(prog, get_prog_file(name, system, trial))

def learn(name, systems):
    if name in metagol_skips:
        systems = [x for x in systems if x != 'metagol']
    jobs = [(name, system, trial) for trial in trials for system in systems]
    list(parmap(learn_, jobs))

def test_(args):
    (name, system, trial) = args
    with open(get_results_file(name, system, trial), 'w') as f:
        res = call_prolog([BK_FILE, get_test_data_file(name, trial), get_prog_file(name, system, trial)], 'test')
        if res != None:
            f.write(res)

def get_accs_(name, system, trial):
    with open(get_results_file(name, system, trial), 'r') as f:
        return [int(line.split(',')[1]) for line in f if line.startswith('acc')]



def gen_list(min_len=1):
    n = random.randint(min_len, MAX_LIST_SIZE+1)
    return [random.randint(1, MAX_ELEMENT+1) for i in range(n)]

def gen_data_(gen_pos, gen_neg, trial):
    # train data
    train_pos = [gen_pos() for i in range(NUM_TRAIN_EXAMPLES)]
    train_neg = [gen_neg() for i in range(NUM_TRAIN_EXAMPLES)]
    with open(get_train_data_file(name, trial), 'w') as f:
        for x in train_pos:
            f.write(f'pos({x}).\n')
        for x in train_neg:
            f.write(f'neg({x}).\n')

    # test data
    with open(get_test_data_file(trial), 'w') as f:
        for i in range(NUM_TEST_EXAMPLES):
            f.write(f'pos({gen_pos()}).\n')
        for i in range(NUM_TEST_EXAMPLES):
            f.write(f'neg({gen_neg()}).\n')

    # WRITE ALEPH INPUT
    with open(get_train_data_file(name, trial, aleph=True), 'w') as f:
        # read general aleph settings
        with open('aleph-modes.pl') as tmp:
            f.write(tmp.read() + '\n')
        with open('aleph.pl') as tmp:
            f.write(tmp.read() + '\n')
        f.write(':-begin_bg.\n')
        with open(BK_FILE) as tmp:
            f.write(tmp.read() + '\n')
        f.write(':-end_bg.\n')
        f.write(':-begin_in_pos.\n')
        for x in train_pos:
            f.write(x + '.\n')
        f.write(':-end_in_pos.\n')
        f.write(':-begin_in_neg.\n')
        for x in train_neg:
            f.write(x + '.\n')
        f.write(':-end_in_neg.\n')

def gen_popper_modes():
    # GEN INPUT FOR POPPER
    with open(get_popper_modes(), 'w') as f:
        with open('modes.pl') as tmp:
            for line in tmp:
                f.write(line)
        f.write('\n% ALL MODES\n')
        with open('modes.pl') as tmp:
            for line in tmp:
                f.write(line)

def gen_data(gen_pos, gen_neg):
    gen_popper_modes()
    for trial in trials:
        gen_data_(gen_pos, gen_neg, trial)

def myround(x):
    if x < 1:
        x = round(x,1)
        if x == 0:
            return 0
        return x
    return int(x)

def read_prog_file(name, system, trial):
    prog_file = get_prog_file(name, system, trial)
    with open(prog_file, 'r') as f:
        for line in f:
            yield line

def get_num_progs_(name, system, trial):
    for line in read_prog_file(name, system, trial):
        if line.startswith('%NUMPROGS'):
            return float(line.split(':')[1])

def get_solving_(name, system, trial):
    for line in read_prog_file(name, system, trial):
        if line.startswith('%SOLVING'):
            return float(line.split(':')[1])

def get_grounding_(name, system, trial):
    for line in read_prog_file(name, system, trial):
        if line.startswith('%GROUNDING'):
            return float(line.split(':')[1])

def get_times_(name, system, trial):
    prog_file = get_prog_file(name, system, trial)
    if not os.path.exists(prog_file):
        return TIMEOUT
    for line in read_prog_file(name, system, trial):
        if line.startswith('%TIME'):
            return float(line.split(':')[1])
    return TIMEOUT

def get_accs(name, system):
    accs = []
    for trial in trials:
        accs.append(np.mean(get_accs_(name, system, trial)))
    return int(np.mean(accs)*100), int(stats.sem(accs)*100)

def get_mu_sem(name, system, func):
    xs = [func(name, system, trial) for trial in trials]
    # print(xs)
    return myround(np.mean(xs)), myround(stats.sem(xs))
    # return np.mean(xs), stats.sem(xs)

def evaluate(name, systems):
    if name in metagol_skips:
        systems = [x for x in systems if x != 'metagol']
    jobs = [(name, system, trial) for trial in trials for system in systems]
    list(parmap(test_, jobs))

def print_acc(name, systems):
    pairs = [get_accs(name, system) for system in systems if not (system == 'metagol' and name in metagol_skips)]
    best = max(acc for acc,err in pairs)
    x = '\\tw{' + name + '}'
    for system in systems:
        if system == 'metagol' and name in metagol_skips:
            x += f' & n/a'
        else:
            acc,err = get_accs(name, system)
            if acc >= best:
                x += ' & \\textbf{' + str(acc) + '} $\pm$ ' + str(err)
            else:
                x += f' & {acc} $\pm$ {err}'
    x+= ' \\\\'
    print(x)

def print_times(name, systems):
    x = '\\tw{' + name + '}'
    pairs = [get_mu_sem(name, system, get_times_) for system in systems if not (system == 'metagol' and name in metagol_skips)]
    best = min(time for time,err in pairs)
    for system in systems:
        if system == 'metagol' and name in metagol_skips:
            x += f' & n/a'
        else:
            time,err = get_mu_sem(name, system, get_times_)
            if time <= best:
                x += ' & \\textbf{' + str(time) + '} $\pm$ ' + str(err)
            else:
                x += f' & {time} $\pm$ {err}'
    x+= ' \\\\'
    print(x)

def results(name, systems):
    x = '\\tw{' + name + '}'
    print('ACCS: ')

    pairs = [get_accs(name, system) for system in systems if not (system == 'metagol' and name in metagol_skips)]
    best = max(acc for acc,err in pairs)

    for system in systems:
        if system == 'metagol' and name in metagol_skips:
            x += f' & n/a'
        else:
            acc,err = get_accs(name, system)
            if acc >= best:
                x += ' & \\textbf{' + str(acc) + '} $\pm$ ' + str(err)
            else:
                x += f' & {acc} $\pm$ {err}'
    x+= ' \\\\'
    print(x)

    pairs = [get_mu_sem(name, system, get_times_) for system in systems if not (system == 'metagol' and name in metagol_skips)]
    best = min(time for time,err in pairs)

    print('TIMES: ')
    x = '\\tw{' + name + '}'
    for system in systems:
        if system == 'metagol' and name in metagol_skips:
            x += f' & n/a'
        else:
            time,err = get_mu_sem(name, system, get_times_)
            if time <= best:
                x += ' & \\textbf{' + str(time) + '} $\pm$ ' + str(err)
            else:
                x += f' & {time} $\pm$ {err}'
    x+= ' \\\\'
    print(x)

    if 'popper' not in systems:
        return

    print('TIME/GROUNDING/SOLVING: ')
    system = 'popper'
    x = '\\tw{' + name + '}'

    time,err = get_mu_sem(name, system, get_times_)
    x += f' & {time} $\pm$ {err}'

    time,err = get_mu_sem(name, system, get_grounding_)
    x += f' & {time} $\pm$ {err}'

    time,err = get_mu_sem(name, system, get_solving_)
    x += f' & {time} $\pm$ {err}'
    x+= ' \\\\'
    # print('ANDY!')
    print(x)
