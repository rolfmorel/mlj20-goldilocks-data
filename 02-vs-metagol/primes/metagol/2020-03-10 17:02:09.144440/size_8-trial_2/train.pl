:- use_module('../../metagol').
:- include('../../unary.pl').
:- include('bk.prolog.pl').

goal :- 
    Pos = [f(9699690)],
    Neg = [f(4849845),f(3233230),f(1939938),f(1385670),f(881790),f(746130),f(570570),f(510510)],
    learn(Pos,Neg).
