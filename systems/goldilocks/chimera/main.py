import os
import sys
import re
import copy

from glob import glob
from collections import defaultdict

import clingo
import pyswip
from pyswip import Prolog

VAR_ANY = None

from . import specialization_constraints
from .util import working_directory, TimeAccumulatorContext
from .observer import Observer


example_program = [[(0,0,'f',[1,2]),(0,1,'head',[1,2]),(0,2,'=',['a',2]),(0,3,'tail',[1,'[]'])],
                   [(1,0,'f',[1,2]),(1,1,'head',[1,3]),(1,2,'=',['a',3]),(1,3,'tail',[1,4]),(1,4,'f',[4,2])]]


print_lits = ['num_literals','body_lit_index', 'argument_safe']
print_lits = []

def model_to_program(model):
    literals = defaultdict(dict)
    variables = defaultdict(lambda: defaultdict(dict))
    for atom in model:
        if atom.name in print_lits:
            print(atom)
        if atom.name == "literal":
            clause = atom.arguments[0].number
            literal_index = atom.arguments[1].number
            literals[clause][literal_index] = atom.arguments[2].name
        if atom.name == "var":
            clause = atom.arguments[0].number
            literal_index = atom.arguments[1].number
            var_pos = atom.arguments[2].number
            var_id = atom.arguments[3].number
            variables[clause][literal_index][var_pos] = var_id
    program = []
    for clause_key in sorted(literals.keys()):
        clause_lits = literals[clause_key]
        clause = []
        for literal_key in sorted(clause_lits.keys()):
            literal_vars = variables[clause_key][literal_key]
            vars_ = []
            for variable_key in sorted(literal_vars.keys()):
                vars_.append(literal_vars[variable_key])
            literal = (clause_key, literal_key,
                       literals[clause_key][literal_key], vars_)
            clause.append(literal)
        program.append(clause)
    return program

def program_to_prolog(program):
    prolog_program = []
    for clause in program:
        head, body = clause[0], clause[1:]
        def convert_literal(lit):
            clause_key, literal_key, predicate, args = lit
            args = map(lambda arg: f"V{arg}" if type(arg) == int else arg, args)
            return f"({clause_key}, {literal_key}, {predicate}, [{','.join(args)}])"

        prolog_program.append(
            f"prog({convert_literal(head)},[{','.join(map(convert_literal, body))}])")
    return prolog_program

def retrieve_examples(filename):
    pos_exs, neg_exs = [], []
    for line in open(filename).readlines():
        if line.startswith("pos(") and line.endswith(").\n"):
            pos_exs += [(line[4:-3])]
        elif line.startswith("neg(") and line.endswith(").\n"):
            neg_exs += [line[4:-3]]
        else:
            print(f"WARNING: ignored unrecognized example: {line}", file=sys.stderr)
    return pos_exs, neg_exs

def evaluate_pos_examples(prolog, program, pos_examples):
    failing_body_gens = []
    for example in pos_examples:
#        solns = list(prolog.query(f"""
#pos_input({example},InpAtom),
#InpAtom =.. [Pred|Args],
#prove([(_,_,Pred,Args)],Failures),
#{example} = InpAtom.
#"""))
        solns = list(prolog.query(f"{example} =.. [Pred|Args],prove([(_,_,Pred,Args)],Failures)."))
        assert(len(solns) == 1)
        body_gen_clauses = []
        if solns == []:
            # program does not have failing literals
            body_gen_clauses = program
        else:
            assignment = solns[0]
            for failure in assignment['Failures']:
                if type(failure) == pyswip.Functor: # FIXME: workaround for identifying a failure
                    clause_idx, literal_idx, pred, args = failure.args
                    non_failing_part_clause = program[clause_idx][:literal_idx]
                    failing_literal = copy.deepcopy(program[clause_idx][literal_idx])
                    for arg_idx, arg in enumerate(args):
                        if type(arg) == pyswip.Variable:
                            failing_literal[3][arg_idx] = None
                    body_gen_clauses.append(non_failing_part_clause+[failing_literal])
        if body_gen_clauses != []:
            failing_body_gens.append(body_gen_clauses)
    return failing_body_gens

def program_to_asp_literals(program):
    def literal_to_atoms(literal):
        (clid, litid, pred, args) = literal
        lit_constraint = [f"literal({clid},{litid},{pred},{len(args)})"]
        for var_pos, var_id in enumerate(args):
            lit_constraint.append(f"var({clid},{litid},{var_pos},{var_id})")
        return lit_constraint
    asp_literals = []
    for clause in program:
        for literal in clause:
            asp_literals += literal_to_atoms(literal)
    return asp_literals

def specialization_constraint(program):
    spec_constraint = program_to_asp_literals(program)
    for clause_idx, clause in enumerate(program):
        num_lits = len(clause)
        spec_constraint.append(f"not literal({clause_idx},{num_lits},_,_)")
    spec_constraint.append(f"not clause({len(program) + 1})")
    return ":- " + ",".join(spec_constraint) + "."

def evaluate_neg_examples(prolog, program, neg_examples):
    failing_clauses = []
    for example in neg_examples:
        solns = list(prolog.query(f"{example} =.. [Pred|Args],prove([(_,_,Pred,Args)],Failures)."))
        assert(len(solns) == 1)
        assignment = solns[0]
        for failure in assignment['Failures']:
            if type(failure) == pyswip.Atom: # FIXME: workaround for identifying a success
                failing_clauses.append(program)       
    return failing_clauses

def clause_generalization_constraint(program):
    clause_gen_constraint = program_to_asp_literals(program)
    for cl_idx, clause in enumerate(program):
        max_lit_idx = len(clause)
        # not the case that there is any additional additional literal in the clause
        clause_gen_constraint.append(f"size({cl_idx},{max_lit_idx-1})") 
    # given that all previous clauses are exactly the same, can't add an additional clause
    return f"""\
:- {','.join(clause_gen_constraint)}.
"""
#%:- {','.join(clause_gen_constraint)},clause({len(program) + 1}).

ASP_DIR = "asp"
ASP_FILES = ["alan.pl"]

@working_directory(os.path.dirname(os.path.dirname(os.path.realpath(__file__))))
def main(task_path, options):
    main_context = TimeAccumulatorContext()
    main_context.enter() # want to know how long it took overall

    prolog_context = main_context.sub_accumulator('prolog')
    prolog_context.sub_accumulator('init')
    prolog_context.sub_accumulator('misc')
    prolog_context.sub_accumulator('example_eval')

    clingo_context = main_context.sub_accumulator('clingo')
    clingo_context.sub_accumulator('adding')
    clingo_context.adding.sub_accumulator('init')
    clingo_context.sub_accumulator('grounding')
    clingo_context.grounding.sub_accumulator('init')
    clingo_context.grounding.sub_accumulator('constraints')
    clingo_context.sub_accumulator('solving')
    clingo_context.sub_accumulator('sizing')
    
    print(os.getcwd())

    prolog = Prolog()
    clingo_ctl = clingo.Control()
    ##clingo_ctl.register_observer(Observer())
    with prolog_context.init:
        prolog.consult(os.getcwd() + "/prolog/metaint.pl")
        for file_ in glob(f"{task_path}/*.prolog.pl"):
            prolog.consult(file_)  # this file might include instructions to cache all invocation of the bk predicates, in order to benefit from keeping state
    pos_exs, neg_exs = retrieve_examples(f"{task_path}/examples.pl")
    print("examples", pos_exs, neg_exs)

    MAX_VARS = MAX_BODY = MAX_CLAUSES = None
    with open(f"{task_path}/parameters.pl") as handle:
        params = handle.read()
        MAX_VARS = int(re.search("max_vars\((\d+)\).", params).group(1))
        MAX_BODY = int(re.search("max_body\((\d+)\).", params).group(1))
        MAX_CLAUSES = int(re.search("max_clauses\((\d+)\).", params).group(1))
    
    asp_base_prog = "" 
    for file_ in glob(f"{task_path}/*.asp.pl") + [f"{task_path}/parameters.pl"] + list(map(lambda f: f"{ASP_DIR}/{f}", ASP_FILES)):
        with open(file_) as handle:
            asp_base_prog += f"\n\n\n%%%%% {file_} %%%%%\n" + handle.read()
#    asp_base_prog += """\n\n
#"""
    with clingo_context.adding.init:
        clingo_ctl.add("base", [], asp_base_prog)
        clingo_ctl.add("program_size", ['n'], """
%%%%% External atom for number of literals in the program %%%%%
%body_lit_index(1..n).
#external num_literals(n).
:- num_literals(n),
   n != #count { Clause,Lit : literal(Clause,Lit,_,_) }.
""")

    with clingo_context.grounding.init:
        clingo_ctl.ground([("base", [])])

    for size in range(2, 1 + MAX_BODY + 1): # '1 +..' for head
        with clingo_context.sizing:
            clingo_ctl.release_external(clingo.Function("num_literals", [size-1]))
            # NB: might well attemp to reground the old parts of base as well
            # To be guaranteed to be efficient should carefully construct "shells" that depend on the program size
            clingo_ctl.ground([("program_size", [size])])
            clingo_ctl.assign_external(clingo.Function("num_literals", [size]), True)
        
        prog_count = 0
        while True:
            added_constraints = []
            clingo_context.solving.enter()
            with clingo_ctl.solve(yield_=True) as handle:
                clingo_context.solving.exit()
                #model = handle.get() # blocks until some result is available
                try:
                    model = next(handle)
                except StopIteration:
                    ##print(f"No more models at 'size' {size}")
                    # No model could be found. 
                    # Let's try to see if we can find a model with more literals
                    break 
                # get rid of previously guessed clauses on the evaluator side 
                with prolog_context.misc:
                    prolog.retractall("prog(_,_)") 
                # extract program from answer set 
                prog_count += 1
                program = model_to_program(model.symbols(atoms=True))
                ##print(program)
                prolog_program = program_to_prolog(program)
                with prolog_context.misc:
                    for clause in prolog_program:
                        prolog.assertz(clause)

                # evaluate the program on the examples, by some (external) evaluator
                prolog_context.example_eval.enter()
                failing_body_gens = evaluate_pos_examples(prolog, program, pos_exs)
                failing_clauses = evaluate_neg_examples(prolog, program, neg_exs)
                prolog_context.example_eval.exit()
                if failing_body_gens != []:
                    if options['constrain_specializations']:
                        for fail_idx, failing_prog in enumerate(failing_body_gens):
                            spec_constr = specialization_constraints.generate_constraint(failing_prog)
                            print(spec_constr)
                            with clingo_context.adding:
                                clingo_ctl.add(f"specialization_constraint{prog_count}_{fail_idx}",
                                               [], spec_constr)
                            added_constraints += [(f"specialization_constraint{prog_count}_{fail_idx}", [])]
                    else:
                        spec_constr = specialization_constraint(program)
                        with clingo_context.adding:
                            clingo_ctl.add(f"specialization_constraint{prog_count}",
                                           [], spec_constr)
                        added_constraints += [(f"specialization_constraint{prog_count}", [])]
                if failing_clauses != []:
                    clause_gen_constr = clause_generalization_constraint(program)
                    ##print(clause_gen_constr)
                    with clingo_context.adding:
                        clingo_ctl.add(f"clause_generalization_constraint{prog_count}", [], clause_gen_constr)
                    added_constraints += [(f"clause_generalization_constraint{prog_count}", [])]
                if failing_body_gens == failing_clauses == []: # program both complete and consistent
                    main_context.exit()
                    main_context._accumulated -= (prolog_context.accumulated + clingo_context.accumulated) # NB: Hack to deal with inner context entered while outer context was still on
                    return program, main_context.as_dict()
            with clingo_context.grounding.constraints:
                ##print(added_constraints)
                clingo_ctl.ground(added_constraints)
        
    print("No program found")
    main_context.exit()
    main_context._accumulated -= (prolog_context.accumulated + clingo_context.accumulated) # NB: Hack to deal with inner context entered while outer context was still on
    return None, main_context.as_dict()

if __name__ == "__main__":
#if __name__ == "__none__":
    options = {'constrain_specializations': "--specs" in sys.argv}
    if options['constrain_specializations']:
        sys.argv.remove("--specs")

    task_path = sys.argv[1] if len(sys.argv) > 1 else "robo.pl"
    program = main(task_path, options)
    if program != None:
        print("congrats!")
        print(program) # TODO: straightforward
    else:
        print("better luck next time...")
