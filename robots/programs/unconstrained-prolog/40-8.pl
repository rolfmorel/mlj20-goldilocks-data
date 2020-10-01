f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,35.99844980239868