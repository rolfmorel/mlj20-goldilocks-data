f(A,B) :- move_down(B,A).
f(A,B) :- move_up(C,B),f(A,C).
%time,3.5747950077056885