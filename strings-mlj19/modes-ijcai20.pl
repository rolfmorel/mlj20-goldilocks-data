max_vars(10).
max_body(10).
max_clauses(1).

modeh(f,2).
direction(f,0,in).
direction(f,1,out).

functional(drop,2).
functional(right,2).
functional(make_uppercase,2).
functional(make_lowercase,2).

irreflexive(drop,2).
irreflexive(right,2).
irreflexive(make_uppercase,2).
irreflexive(make_lowercase,2).

:-
    clause_var(Clause,Var),
    #count{P,Vars : var_in_literal(Clause,P,Vars,Var),vars(2,Vars)} > 2.

modeb(not_number,1).
direction(not_number,0,in).

modeb(drop,2).
direction(drop,0,in).
direction(drop,1,out).

modeb(right,2).
direction(right,0,in).
direction(right,1,out).

modeb(make_uppercase,2).
direction(make_uppercase,0,in).
direction(make_uppercase,1,out).

modeb(make_lowercase,2).
direction(make_lowercase,0,in).
direction(make_lowercase,1,out).

modeb(is_letter,1).
direction(is_letter,0,in).

modeb(is_uppercase,1).
direction(is_uppercase,0,in).

modeb(is_space,1).
direction(is_space,0,in).

modeb(is_number,1).
direction(is_number,0,in).

modeb(at_start,1).
direction(at_start,0,in).

modeb(at_end,1).
direction(at_end,0,in).
