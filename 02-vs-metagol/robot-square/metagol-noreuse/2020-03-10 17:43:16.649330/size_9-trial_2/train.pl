:- use_module('../../metagol-noreuse').
:- include('../../robots.pl').

goal :- Pos = [f(world((0/0),(1/1),false),world((9/0),(1/1),false))],
        learn(Pos,[]).
