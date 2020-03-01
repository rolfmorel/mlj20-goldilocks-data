import dlvhex
import sys
import ast
import re

def pyDbg(N,MSG):
    N, MSG = N.value(), MSG.value()
    ##print(f"debug({N}: {MSG})", file=sys.stderr)
    dlvhex.output(())

###############################################################################
params = open('parameters.pl', 'r').read()

MAX_POS_X = int(re.findall("max_pos_x\((\d+)\).", params)[0])
MAX_POS_Y = int(re.findall("max_pos_y\((\d+)\).", params)[0])

print(MAX_POS_X)
print(MAX_POS_Y)

def pyMoveRight(C):
    try:
        (rx,ry,bx,by,holding) = ast.literal_eval(C.value())
        # FIXME: don't allow to go out of bounds
        if int(rx) < MAX_POS_X:
            dlvhex.output((f"{(int(rx)+1,ry,int(bx)+int(holding),by,holding)}",))
    except:
        pass

def pyMoveLeft(C):
    try:
        (rx,ry,bx,by,holding) = ast.literal_eval(C.value())
        if int(rx) > 0:
            dlvhex.output((f"{(int(rx)-1,ry,int(bx)-int(holding),by,holding)}",))
    except:
        pass

def pyMoveDown(C):
    try:
        (rx,ry,bx,by,holding) = ast.literal_eval(C.value())
        
        if int(ry) > 0:
            dlvhex.output((f"{(rx,int(ry)-1,bx,int(by)-int(holding),holding)}",))
    except:
        pass

def pyMoveUp(C):
    try:
        (rx,ry,bx,by,holding) = ast.literal_eval(C.value())
        
        if int(ry) < MAX_POS_Y:
            dlvhex.output((f"{(rx,int(ry)+1,bx,int(by)+int(holding),holding)}",))
    except:
        pass

def pyGrab(C):
    try:
        (rx,ry,bx,by,holding) = ast.literal_eval(C.value())
        if (rx,ry) == (bx,by):
            dlvhex.output((f"{(rx,ry,bx,by,1)}",))
    except:
        pass

def pyDrop(C):
    try:
        (rx,ry,bx,by,holding) = ast.literal_eval(C.value())
        if (rx,ry) == (bx,by) and int(holding) == 1:
            dlvhex.output((f"{(rx,ry,bx,by,0)}",))
    except:
        pass

def pyAtTop(C):
    try:
        (rx,ry,bx,by,holding) = ast.literal_eval(C.value())
        if int(ry) == MAX_POS_Y:
            dlvhex.output(())
    except:
        pass

def pyAtBottom(C):
    try:
        (rx,ry,bx,by,holding) = ast.literal_eval(C.value())
        if int(ry) == 0:
            dlvhex.output(())
    except:
        pass

def pyAtRight(C):
    try:
        (rx,ry,bx,by,holding) = ast.literal_eval(C.value())
        if int(rx) == MAX_POS_X:
            dlvhex.output(())
    except:
        pass

def pyAtLeft(C):
    try:
        (rx,ry,bx,by,holding) = ast.literal_eval(C.value())
        if int(rx) == 0:
            dlvhex.output(())
    except:
        pass


def register():
	prop = dlvhex.ExtSourceProperties()
	dlvhex.addAtom("pyDbg", (dlvhex.CONSTANT, dlvhex.CONSTANT), 0, prop)

	prop = dlvhex.ExtSourceProperties()
	prop.addFiniteOutputDomain(0)
	dlvhex.addAtom("pyMoveLeft", (dlvhex.CONSTANT, ), 1, prop)

	prop = dlvhex.ExtSourceProperties()
	prop.addFiniteOutputDomain(0)
	dlvhex.addAtom("pyMoveRight", (dlvhex.CONSTANT, ), 1, prop)

	prop = dlvhex.ExtSourceProperties()
	prop.addFiniteOutputDomain(0)
	dlvhex.addAtom("pyMoveUp", (dlvhex.CONSTANT, ), 1, prop)

	prop = dlvhex.ExtSourceProperties()
	prop.addFiniteOutputDomain(0)
	dlvhex.addAtom("pyMoveDown", (dlvhex.CONSTANT, ), 1, prop)

	prop = dlvhex.ExtSourceProperties()
	prop.addFiniteOutputDomain(0)
	dlvhex.addAtom("pyGrab", (dlvhex.CONSTANT, ), 1, prop)

	prop = dlvhex.ExtSourceProperties()
	prop.addFiniteOutputDomain(0)
	dlvhex.addAtom("pyDrop", (dlvhex.CONSTANT, ), 1, prop)

	prop = dlvhex.ExtSourceProperties()
	dlvhex.addAtom("pyAtTop", (dlvhex.CONSTANT,), 0, prop)
	prop = dlvhex.ExtSourceProperties()
	dlvhex.addAtom("pyAtBottom", (dlvhex.CONSTANT,), 0, prop)
	prop = dlvhex.ExtSourceProperties()
	dlvhex.addAtom("pyAtRight", (dlvhex.CONSTANT,), 0, prop)
	prop = dlvhex.ExtSourceProperties()
	dlvhex.addAtom("pyAtLeft", (dlvhex.CONSTANT,), 0, prop)

	#prop = dlvhex.ExtSourceProperties()
	#prop.addFiniteOutputDomain(0)
	#dlvhex.addAtom("pyDestruct", (dlvhex.CONSTANT, ), 2, prop)

	#prop = dlvhex.ExtSourceProperties()
	#prop.addFiniteOutputDomain(0)
	#dlvhex.addAtom("pyCall", (dlvhex.CONSTANT, dlvhex.CONSTANT), 1, prop)

	#prop = dlvhex.ExtSourceProperties()
	#prop.addFiniteOutputDomain(0)
	#dlvhex.addAtom("getFirst", (dlvhex.CONSTANT, ), 1, prop)

	#prop = dlvhex.ExtSourceProperties()
	#prop.addFiniteOutputDomain(0)
	#dlvhex.addAtom("removeFirst", (dlvhex.CONSTANT, ), 1, prop)

	#prop = dlvhex.ExtSourceProperties()
	#dlvhex.addAtom("contains", (dlvhex.CONSTANT, dlvhex.CONSTANT ), 0, prop)
