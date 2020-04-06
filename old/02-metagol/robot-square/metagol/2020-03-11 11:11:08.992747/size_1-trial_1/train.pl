:- use_module('../../metagol').
:- include('../../robots.pl').
:- include('parameters.pl').

goal :- Pos = [f(world((0/0),(1/1),false),world((1/0),(1/1),false))],
        learn(Pos,[]).
