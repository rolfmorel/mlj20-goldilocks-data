f(A,B) :- move_up(A,B).
f(A,B) :- move_up(C,B),f(A,C).
%time,12.393740177154541