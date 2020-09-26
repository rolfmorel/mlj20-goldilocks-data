f(A,B) :- move_down(B,A).
f(A,B) :- move_up(C,B),f(A,C).
%time,2.5657601356506348