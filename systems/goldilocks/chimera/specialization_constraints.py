from .main import VAR_ANY

example_program = [[(1,0,'f',[1,2]),(1,1,'head',[1,2]),(1,2,'=',['a',2]),(1,3,'tail',[1,'[]'])],
                   [(2,0,'f',[1,2]),(2,1,'head',[1,3]),(1,2,'=',['a',3]),(2,3,'tail',[1,4]),(2,4,'f',[4,2])]]

def literal_to_atoms(literal):
    (clid, litid, pred, args) = literal
    lit_constraint = [f"literal({clid},{litid},{pred},{len(args)})"]
    for var_pos, var_id in enumerate(args):
        lit_constraint.append(f"var({clid},{litid},{var_pos},{var_id})")
    return lit_constraint

def clause_to_asp_literals(clause):
    asp_literals = []
    for literal in clause:
        asp_literals += literal_to_atoms(literal)
    return asp_literals

def program_to_asp_literals(program):
    asp_literals = []
    for clause in program:
        asp_literals += clause_to_asp_literals(clause)
    return asp_literals

def generate_constraint(program):
    non_failing_part = map(lambda list_: list_[:len(list_)-1], program)
    spec_constraint = []
    for clause in program:
        failing_literal = clause[-1]
        clid, litid, pred, args = failing_literal
        if len(args) == 1: # HACK: special constraint for unary predicates
            spec_constraint += literal_to_atoms(clause[0])
            spec_constraint.append(f"literal({clid},_,{pred},_)")
        else:
            spec_constraint += clause_to_asp_literals(clause[:-1])
            spec_constraint.append(f"literal({clid},{litid},{pred},{len(args)})")
            for var_pos, var_id in enumerate(args):
                if var_id != VAR_ANY:
                    spec_constraint.append(f"var({clid},{litid},{var_pos},{var_id})")
    spec_constraint.append(f"not clause({len(program)})")
    #print(spec_constraint)
    return ":- " + ",".join(spec_constraint) + "."
