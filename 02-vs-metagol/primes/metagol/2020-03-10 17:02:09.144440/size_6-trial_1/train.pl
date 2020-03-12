:- use_module('../../metagol').
:- include('../../unary.pl').
:- include('bk.prolog.pl').

goal :- 
    Pos = [f(30030)],
    Neg = [f(15015),f(10010),f(6006),f(4290),f(2730),f(2310)],
    learn(Pos,Neg).
