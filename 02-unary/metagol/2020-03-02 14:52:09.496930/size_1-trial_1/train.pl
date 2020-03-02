:- use_module('../../metagol').
:- include('../../unary.pl').
:- include('bk.prolog.pl').

goal :- 
    Pos = [f(2)],
    Neg = [f(1)],
    learn(Pos,Neg).
