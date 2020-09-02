f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,34.15176820755005