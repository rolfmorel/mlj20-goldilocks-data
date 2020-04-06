:- include('../../unary.pl').
goal :-
    Pos = [f(6)],
    Neg = [f(3),f(2)],
    learn(Pos,Neg).
