:- use_module('../../metagol').
:- include('../../unary.pl').
:- include('bk.prolog.pl').

goal :- 
    Pos = [f(2310)],
    Neg = [f(1155),f(770),f(462),f(330),f(210)],
    learn(Pos,Neg).
