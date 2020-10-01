f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,1.0589652061462402