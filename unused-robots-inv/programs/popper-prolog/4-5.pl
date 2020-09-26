f(A,B) :- move_down(B,A).
f(A,B) :- move_up(A,C),f(C,B).
%time,3.7106540203094482