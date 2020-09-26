f(A,B) :- move_up(C,B),f(A,C).
f(A,B) :- move_up(B,A).
%time,6.426410913467407