import subprocess

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