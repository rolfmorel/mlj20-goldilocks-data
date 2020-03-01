import time
import re
import os
import subprocess
import tempfile


def parse_asp_meta(meta):
    matches = re.match('meta\((.+?),(.+?),(.+?),(.+?)\)', meta).groups()
    rule, subs = matches[0], matches[1:]
#    match = re.match(r'meta\((\w+),\w+,\d+,\(([\w,]+)\)\)',meta)
#    rule, subs = match.group(1), match.group(2)
#    subs = subs.split(',')

    def rename(f):
        if '0' <= f <= '9':
            return 'f' + f
        return f
    subs = map(rename, subs)

    if rule == 'monadic':
        return "dyadic_bk({0},A,A):-deduced({2},A).\npred({0},2).".format(*subs)
    if rule == 'ident':
        return "dyadic_bk({0},A,B):-deduced({2},A,B).\npred({0},2).".format(*subs)
    if rule == 'dident':
        return "dyadic_bk({0},A,B):-deduced({1},A,B),deduced({2},A,B).\npred({0},2).".format(*subs)
    if rule == 'twident':
        return "dyadic_bk({0},A,B):-deduced({1},A,C),deduced({2},B,C).\npred({0},2).".format(*subs)
    if rule == 'precon':
        return "dyadic_bk({0},A,B):-deduced({1},A),deduced({2},A,B).\npred({0},2).".format(*subs)
    if rule == 'postcon':
        return "dyadic_bk({0},A,B):-deduced({1},A,B),deduced({2},B).\npred({0},2).".format(*subs)
    if rule == 'chain':
        return "dyadic_bk({0},A,B):-deduced({1},A,C),deduced({2},C,B).\npred({0},2).".format(*subs)
    if rule == 'tailrec':
        return "dyadic_bk({0},A,B):-deduced({2},A,C),deduced({0},C,B).\npred({0},2).".format(*subs)
    if rule == 'ifthenelse':
        return "dyadic_bk({0},A,B):-ifthenelse(A,B,{1},{2},{3}).\npred({0},2).".format(*subs)
    if rule == 'until':
        return "dyadic_bk({0},A,B):-until(A,B,{1},{2}).\npred({0},2).".format(*subs)
    if rule == 'map':
        return "dyadic_bk({0},A,B):-map({2},A,B).\npred({0},2).".format(*subs)


def call_asp(load_files, max_clauses, timeout, output):
    cmdprefix = "hexlite --flpcheck=none -n=1 --pluginpath ../.. --plugin plugin -- " + ' '.join(load_files)
    start = time.time()
    try:
        for size in range(1,max_clauses+1):
            for skolems in range(0,size):
                output.write("%size: {}, skolems: {}\n".format(size, skolems))
                output.flush()
                end = time.time()

                if (end-start) > timeout:
                    print('%fail,timeout\n', file=output)
                    return False

                out = hexlite_caller(cmdprefix, timeout-(end-start), size, skolems)
                # out = hexlite_caller(cmdprefix, timeout, size, skolems)

                if out.endswith("}\n"): # found a model
                    metas = re.findall('(meta\([^\(\)]+?,[^\(\)]+?,[^\(\)]+?,[^\(\)]+?\))', out)
                    #metas = re.findall(r'meta\(\w+,\w+,\d+,\([\w,]+\)\)',out)
                    rules = sorted(parse_asp_meta(m) for m in metas)
                    return rules
        print('%fail,program too large\n', file=output)
    finally:
        end = time.time()
        print('%time,{}\n'.format(end-start), file=output)

def hexlite_caller(cmd, asp_timeout, size=0, skolems=0):
    params_file_fd, params_file_nm = tempfile.mkstemp()
    p = None
    try:
        with os.fdopen(params_file_fd, 'w') as params_file:
            params_file.write("size({}).\n".format(size))
            params_file.write('\n'.join('skolem({}).'.format(sk) for sk in range(1,skolems+1)))
            params_file.write('\n')
            params_file.flush()

            cmd += " " + params_file_nm
            print(cmd)

            p = subprocess.Popen(cmd.split(), stdin=subprocess.PIPE, stdout=subprocess.PIPE)

            # (out, err) = p.communicate(timeout=max(timeout - time.time(),0))
            (out, err) = p.communicate(timeout=asp_timeout)
            return out.decode('utf-8')
    except subprocess.TimeoutExpired:
        if p is not None:
            p.kill()
        return ""
    finally:
        #os.remove(params_file_nm)
        print(params_file_nm)
        pass
