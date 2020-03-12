:- use_module('../../metagol').
:- include('../../unary.pl').
:- include('bk.prolog.pl').

goal :- 
    Pos = [f(223092870)],
    Neg = [f(111546435),f(74364290),f(44618574),f(31870410),f(20281170),f(17160990),f(13123110),f(11741730),f(9699690)],
    learn(Pos,Neg).
