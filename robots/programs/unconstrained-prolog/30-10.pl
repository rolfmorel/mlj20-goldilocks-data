f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,43.11150002479553