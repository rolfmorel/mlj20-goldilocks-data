import time
import subprocess
import multiprocessing

# NUM_CPUS = 4
# TIMEOUT = 300
# EVAL_TIMEOUT = 0.5
# MODES_FILE = 'modes.pl'
# BK_FILE = 'bk.pl'
# GROUND_CONSTRAINTS = False
# MAX_LITERALS = 20

# def get_train_data_file(trial):
#     return f'data/train/{trial}.pl'

# def get_test_data_file(trial):
#     return f'data/test/{trial}.pl'

# def get_prog_file(system, trial):
#     return f'programs/{system}/{trial}.pl'

# def get_results_file(system, trial):
#     return f'results/{system}/{trial}.pl'

def call_(cmd, action=None, timeout=60):
    cmd = cmd.split(' ')
    p = subprocess.Popen(cmd, stdin=subprocess.PIPE, stdout=subprocess.PIPE)
    print(cmd, action)
    if action != None:
        p.stdin.write(action.encode())
    try:
        output, _err = p.communicate(timeout = timeout)
        return output.decode()
    except subprocess.TimeoutExpired:
        pass
    finally:
        p.kill()

def call_asp(cmd):
    return call_(cmd)

def call_prolog(files, action, timeout=60):
    files = ','.join((f"'{x}'" for x in files))
    cmd = f"load_files([{files}],[silent(true)]).\n"
    cmd += action + '.'
    return call_('swipl -q', cmd, timeout)

def parmap(func, jobs, NUM_CPUS):
    if NUM_CPUS == 1:
        return map(func, jobs)
    with multiprocessing.Pool(NUM_CPUS) as p:
        return p.map(func, jobs)

# def call_metagol(train_data_file):
#     load_files = ['experiment', train_data_file]
#     t1 = time.time()
#     prog = call_prolog(load_files, 'run')
#     t2 = time.time()
#     d = f'%time,{t2-t1}'
#     if prog == None:
#         return [d]
#     return [x for x in prog.split('\n') if ':-' in x] + [d]

# def call_popper(system, train_data_file):
#     no_pruning = True
#     if system == 'popper':
#         no_pruning = False
#     t1 = time.time()
#     try:
#         (prog, context) = popper.entry_point.run_experiment('modes.pl', BK_FILE, train_data_file, MAX_LITERALS, EVAL_TIMEOUT, GROUND_CONSTRAINTS, no_pruning, TIMEOUT, debug=False)
#         t2 = time.time()
#         d = f'%time,{t2-t1}'
#         if prog == None or prog == False:
#             return [d]
#         return prog + [d]
#     except:
#         t2 = time.time()
#         d = f'%time,{t2-t1}'
#         return [d]

# def save_prog(prog, filename):
#     with open(filename, 'w') as f:
#         f.write('\n'.join(prog) + '\n')

# def learn_(args):
#     (system, trial) = args
#     prog = None
#     train_data_file = get_train_data_file(trial)
#     if system == 'metagol':
#         prog = call_metagol(train_data_file)
#     else:
#         prog = call_popper(system, train_data_file)
#     print(prog)
#     print(get_prog_file(system, trial))
#     save_prog(prog, get_prog_file(system, trial))

# def learn(jobs):
#     list(parmap(learn_, jobs))