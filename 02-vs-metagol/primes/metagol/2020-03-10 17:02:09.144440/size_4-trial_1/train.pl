:- use_module('../../metagol').
:- include('../../unary.pl').
:- include('bk.prolog.pl').

goal :- 
    Pos = [f(210)],
    Neg = [f(105),f(70),f(42),f(30)],
    learn(Pos,Neg).
