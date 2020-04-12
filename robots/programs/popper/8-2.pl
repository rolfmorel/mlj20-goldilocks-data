f(A,B) :- move_up(A,B).
f(A,B) :- move_up(C,B),f(A,C).
%time,3.5681424140930176