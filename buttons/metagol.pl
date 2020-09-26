:- ['../metagol'].

metarule(unary1, [P,Q], [P,A], [[Q,A]]).
metarule(unary2, [P,Q,R], [P,A], [[Q,A],[R,A]]).

run:-
    findall(A, pos(A), Pos),
    findall(A, neg(A), Neg),
    learn(Pos,Neg).