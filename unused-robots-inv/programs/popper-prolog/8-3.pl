f(A,B) :- move_up(A,C),f(C,B).
f(A,B) :- move_up(A,B).
%time,5.567403078079224