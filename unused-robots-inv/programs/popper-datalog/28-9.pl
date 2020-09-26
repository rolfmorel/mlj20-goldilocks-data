f(A,B) :- move_up(A,B).
f(A,B) :- move_up(C,B),f(A,C).
%time,14.494754076004028