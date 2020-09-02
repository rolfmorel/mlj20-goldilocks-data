max_vars(10).
max_body(1).
max_clauses(1).

modeh(f,2).
direction(f,0,in).
direction(f,1,out).

functional(copy,2).
functional(skip,2).
functional(copyskip,2).
functional(mk_uppercase,2).
functional(mk_lowercase,2).

irreflexive(copy,2).
irreflexive(skip,2).
irreflexive(copyskip,2).
irreflexive(mk_uppercase,2).
irreflexive(mk_lowercase,2).


:-
    clause_var(Clause,Var),
    #count{P,Vars : var_in_literal(Clause,P,Vars,Var),vars(2,Vars)} > 2.

modeb(is_empty,1).
direction(is_empty,0,in).

modeb(not_empty,1).
direction(not_empty,0,in).

modeb(is_space,1).
direction(is_space,0,in).

modeb(is_uppercase,1).
direction(is_uppercase,0,in).

modeb(is_lowercase,1).
direction(is_lowercase,0,in).

modeb(is_number,1).
direction(is_number,0,in).

modeb(not_number,1).
direction(not_number,0,in).

modeb(copy,2).
direction(copy,0,in).
direction(copy,1,out).

modeb(skip,2).
direction(skip,0,in).
direction(skip,1,out).

modeb(copyskip,2).
direction(copyskip,0,in).
direction(copyskip,1,out).

modeb(mk_uppercase,2).
direction(mk_uppercase,0,in).
direction(mk_uppercase,1,out).

modeb(mk_lowercase,2).
direction(mk_lowercase,0,in).
direction(mk_lowercase,1,out).