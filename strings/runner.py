import os
import sys
import time
import random
import string
import numpy as np
import multiprocessing
import scipy.stats as stats
from scipy.stats import sem, t
sys.path.append('../')
import brute
import metagol
import common

num_tasks = 327
# tasks = set(range(1, num_tasks+1))
tasks = [1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 14, 19, 23, 24, 25, 29, 30, 31, 32, 35, 36, 41, 42, 43, 47, 48, 49, 52, 55, 56, 63, 71, 74, 81, 82, 87, 91, 92, 94, 96, 97, 98, 99, 102, 103, 106, 108, 113, 114, 116, 117, 120, 121, 122, 125, 127, 128, 129, 131, 132, 136, 137, 138, 139, 140, 141, 144, 149, 151, 152, 154, 155, 156, 160, 162, 163, 168, 173, 174, 176, 177, 178, 185, 186, 187, 188, 189, 190, 192, 196, 203, 204, 206, 210, 215, 217, 218, 220, 222, 225, 226, 229, 231, 237, 239, 240, 241, 242, 245, 246, 252, 253, 255, 259, 261, 262, 275, 278, 293, 295, 296, 297, 298, 299, 300, 323, 324, 325, 326, 327]

# tasks = [290,291,300]
# trials = [1,2]
trials = [1,2,3,4,5,6,7,8,9,10]
timeout = 60
examples = [1,3,5,7,9]
# examples = [9]

systems = ['brute','brute_uniform','metagol2']
jobs = [(num_examples, task, trial) for num_examples in examples for task in tasks for trial in trials]
num_cpus = 6
path = '/Users/andrew/Dropbox/code/ijcai20/brute/code/e2-strings/'

def get_train_file(num_examples, task, trial):
    return f'data/train/{num_examples}-{task}-{trial}.pl'

def get_test_file(num_examples, task, trial):
    return f'data/test/{num_examples}-{task}-{trial}.pl'

def get_prog_file(system, num_examples, task, trial):
    return f'programs/{system}/{num_examples}-{task}-{trial}.pl'

def get_results_file(system, num_examples, task, trial):
    return f'results/{system}/{num_examples}-{task}-{trial}.pl'

def parmap(func, jobs):
    if num_cpus == 1:
        return map(func, jobs)
    with multiprocessing.Pool(num_cpus) as p:
        return p.map(func, jobs)

def load_probs():
    dic = {}
    fname = 'probs.txt'
    with open(fname, 'r') as f:
        for line in f:
            if line.startswith('# -*- coding: utf-8 -*-'):
                continue
            if line.startswith('%p'):
                problem = int(line[2:])
            else:
                xs = line.strip().split('=>')
                if len(xs) > 1:
                    if problem not in dic:
                        dic[problem] = []
                    dic[problem].append(xs)
    return dic

def gen_atom(x):
    s1 = list(x[0].strip())
    s2 = list(x[1].strip())
    n1 = len(s1)
    n2 = len(s2)
    a = f'w(1,{n1},{s1})'
    b = f'w(_,{n2},{s2})'
    a = a.replace(', ', ',')
    b = b.replace(', ', ',')
    atom = f'pos({a},{b}).'
    return atom

def gen_data():
    dic = load_probs()
    for num_examples in range(1,10):
        for trial in trials:
            for problem, examples in dic.items():
                if len(examples) < 10:
                    continue
                if problem not in tasks:
                    continue
                random.shuffle(examples)
                train = examples[:num_examples]
                test = examples[num_examples:]
                filename = get_train_file(num_examples, problem, trial)
                with open(filename, 'w') as f:
                    for x in train:
                        atom = gen_atom(x)
                        f.write(atom + '\n')
                filename = get_test_file(num_examples, problem, trial)
                with open(filename, 'w') as f:
                    for x in test:
                        atom = gen_atom(x)
                        f.write(atom + '\n')

def save_prog(prog, duration, filename):
    with open(filename, 'w') as f:
        if prog is not None:
            f.write(prog + '\n')
            f.write('% solved,1\n')
        else:
            f.write('% solved,0\n')
        f.write('% time,' + str(duration))

# subset = set([1, 2, 3, 4, 5, 6, 8, 10, 14, 16, 19, 20, 21, 23, 24, 26, 29, 33, 34, 35, 37, 38, 41, 42, 47, 48, 52, 55, 56, 57, 63, 66, 71, 72, 74, 79, 82, 87, 88, 91, 92, 94, 96, 97, 98, 99, 102, 105, 106, 108, 110, 113, 114, 115, 116, 117, 118, 120, 121, 122, 123, 129, 131, 132, 136, 137, 138, 139, 140, 144, 149, 150, 151, 152, 155, 156, 160, 161, 164, 168, 172, 173, 174, 178, 185, 186, 187, 190, 191, 192, 197, 203, 215, 218, 222, 223, 226, 236, 239, 240, 242, 252, 255, 259, 261, 262, 265, 270, 280, 281, 283, 284, 290, 291, 295, 296, 297, 298, 299, 304, 307, 311, 312, 313, 321, 322, 323, 324, 325, 326, 327])

def train_brute_(triple):
    (num_examples, task, trial, progs) = triple
    examples_file = get_train_file(num_examples, task, trial)
    a = time.time()
    prog = brute.train(progs, examples_file, 'bk.pl', 'programs.pl', timeout)
    b = time.time()
    prog_file = get_prog_file('brute', num_examples, task, trial)
    save_prog(prog, b-a, prog_file)

def train_brute_uniform_(triple):
    (num_examples, task, trial, progs) = triple
    examples_file = get_train_file(num_examples, task, trial)
    a = time.time()
    prog = brute.train(progs, examples_file, 'bk_uniform.pl', 'programs.pl', timeout)
    b = time.time()
    prog_file = get_prog_file('brute_uniform', num_examples, task, trial)
    save_prog(prog, b-a, prog_file)

def train_metagol_(triple):
    (num_examples, task, trial) = triple
    examples_file = get_train_file(num_examples, task, trial)
    a = time.time()
    prog = metagol.train('experiment.pl', examples_file, 'bk.pl', timeout)
    if prog != None:
        prog = prog.replace('true.','')
    b = time.time()
    prog_file = get_prog_file('metagol2', num_examples, task, trial)
    save_prog(prog, b-a, prog_file)

def train_brute():
    gen = f'{path}/gen.pl'
    out = f'{path}/programs.pl'
    progs = brute.gen_programs(gen, out)
    tmp = [(num_examples, task, trial, progs) for (num_examples, task, trial) in jobs]
    list(parmap(train_brute_, tmp))

def train_brute_uniform():
    gen = f'{path}/gen.pl'
    out = f'{path}/programs.pl'
    progs = brute.gen_programs(gen, out)
    tmp = [(num_examples, task, trial, progs) for (num_examples, task, trial) in jobs]
    list(parmap(train_brute_uniform_, tmp))

def train_metagol():
    list(parmap(train_metagol_, jobs))

def test_(triple):
    (system, num_examples, task, trial) = triple
    results_file = get_results_file(system, num_examples, task, trial)
    with open(results_file, 'w') as f:
        examples_file = get_test_file(num_examples, task, trial)
        prog_file = get_prog_file(system, num_examples, task, trial)
        res = common.call_prolog(['experiment.pl', 'bk.pl', examples_file, prog_file], 'test')
        if res != None:
            f.write(res)

def test():
    tmp = [(system, num_examples, task, trial) for (num_examples, task, trial) in jobs for system in systems]
    list(parmap(test_, tmp))


def get_accuracies(system, num_examples, task, trial):
    results_file = get_results_file(system, num_examples, task, trial)
    with open(results_file, 'r') as f:
        return [int(line.split(',')[1]) for line in f if line.startswith('acc')]

def get_times(system, num_examples, task, trial):
    prog_file = get_prog_file(system, num_examples, task, trial)
    if not os.path.exists(prog_file):
        return timeout
    with open(prog_file, 'r') as f:
        for line in f:
            if line.startswith('% time'):
                return float(line.split(',')[1])
    return timeout

# def get_solved():
#     solved = set([])
#     for system in systems:
#         for num_examples in examples:
#             for trial in trials:
#                 for task in tasks:
#                     prog_file = get_prog_file(system, num_examples, task, trial)
#                     if not os.path.exists(prog_file):
#                         continue
#                     with open(prog_file, 'r') as f:
#                         prog = f.read()
#                         # print(prog)
#                         if 'solved,1' in prog:
#                             # print(prog)
#                             solved.add(task)
#     num_solved = sum(1 for task in tasks if task in solved)
#     num_unsolved = sum(1 for task in tasks if task not in solved)
#     print(num_solved, num_unsolved)
#     return solved

def results1():
    res_brute = []
    res_uniform = []
    for system in ['brute', 'brute_uniform']:
        for num_examples in examples:
            all_accs = []
            all_times = []
            for trial in trials:
                trial_accs = []
                trial_times = []
                for task in tasks:
                    accs = get_accuracies(system, num_examples, task, trial)
                    if system == 'brute':
                        res_brute.append(((num_examples,trial,task),accs))
                    else:
                        res_uniform.append(((num_examples,trial,task),accs))

    for i in range(len(res_brute)):
        (num_examples, trial, task) = res_brute[i][0]
        if num_examples != 9:
            continue
        acc_brute = res_brute[i][1]
        acc_uni = res_uniform[i][1]
        for a,b in zip(acc_brute,acc_uni):
            if a != b and a == 1:
                print(num_examples, task, trial)


#             #         times = get_times(system, num_examples, task, trial)
#             #         trial_accs.extend(accs)
#             #         trial_times.append(times)
#             #     all_accs.append(np.mean(trial_accs))
#             #     all_times.append(np.mean(trial_times))
#             # mu_acc = np.mean(all_accs)*100
#             # sem_acc = stats.sem(all_accs)*100
#             # mu_time = np.mean(all_times)
#             # sem_time = stats.sem(all_times)
#             # print(f'({num_examples},{mu_acc}) +- (0,{sem_acc})')
#             # # print(f'({num_examples},{mu_time}) +- (0,{sem_time})')



def results():
    for system in systems:
        print(system)
        for num_examples in examples:
            all_accs = []
            all_times = []
            for trial in trials:
                trial_accs = []
                trial_times = []
                for task in tasks:
                    accs = get_accuracies(system, num_examples, task, trial)
                    times = get_times(system, num_examples, task, trial)
                    trial_accs.extend(accs)
                    trial_times.append(times)
                all_accs.append(np.mean(trial_accs))
                all_times.append(np.mean(trial_times))
            mu_acc = np.mean(all_accs)*100
            sem_acc = stats.sem(all_accs)*100
            mu_time = np.mean(all_times)
            sem_time = stats.sem(all_times)
            # print(f'({num_examples},{mu_acc}) +- (0,{sem_acc})')
            # print(f'({num_examples},{mu_time}) +- (0,{sem_time})')

            # mu_solved = np.mean(solved)*100
            # sem_solved = stats.sem(solved)*100
            # mu_time = np.mean(times)
            # sem_time = stats.sem(times)
            # cl_95 = sem_solved * 1.95

            confidence = 0.95
            n = len(all_accs)
            h_acc = sem_acc * t.ppf((1 + confidence) / 2, n - 1)
            h_time = sem_time * t.ppf((1 + confidence) / 2, n - 1)
            print(f'({num_examples},{mu_acc}) +- (0,{h_acc})')
            # print(f'({num_examples},{mu_time}) +- (0,{h_time})')







# gen_data()
# train_brute()
# train_brute_uniform()
# train_metagol()
# test()
# solved = get_solved()
results()
#results1()

# print(list(solved))
