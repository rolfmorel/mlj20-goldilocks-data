:- use_module('../../metagol').
:- include('../../unary.pl').
:- include('bk.prolog.pl').

goal :- 
    Pos = [f(30)],
    Neg = [f(15),f(10),f(6)],
    learn(Pos,Neg).
