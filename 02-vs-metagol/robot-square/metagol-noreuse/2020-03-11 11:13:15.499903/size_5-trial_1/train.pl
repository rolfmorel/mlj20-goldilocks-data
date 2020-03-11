:- use_module('../../metagol-noreuse').
:- include('../../robots.pl').
:- include('parameters.pl').

goal :- Pos = [f(world((0/0),(1/1),false),world((5/0),(1/1),false))],
        learn(Pos,[]).
