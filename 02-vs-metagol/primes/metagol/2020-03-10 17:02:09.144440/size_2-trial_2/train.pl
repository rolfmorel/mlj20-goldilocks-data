:- use_module('../../metagol').
:- include('../../unary.pl').
:- include('bk.prolog.pl').

goal :- 
    Pos = [f(6)],
    Neg = [f(3),f(2)],
    learn(Pos,Neg).
