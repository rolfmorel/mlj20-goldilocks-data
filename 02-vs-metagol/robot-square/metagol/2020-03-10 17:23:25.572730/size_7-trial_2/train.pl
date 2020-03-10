:- use_module('../../metagol').
:- include('../../robots.pl').

goal :- Pos = [f(world((0/0),(1/1),false),world((7/0),(1/1),false))],
        learn(Pos,[]).
