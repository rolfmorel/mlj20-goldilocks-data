f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,23.260215759277344