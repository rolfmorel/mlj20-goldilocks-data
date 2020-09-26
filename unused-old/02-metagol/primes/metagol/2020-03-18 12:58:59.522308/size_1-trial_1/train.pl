:- include('../../unary.pl').
goal :-
    Pos = [f(2)],
    Neg = [f(1)],
    learn(Pos,Neg).
