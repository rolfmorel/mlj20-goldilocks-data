f(A,B) :- move_up(C,B),f(A,C).
f(A,B) :- move_up(B,A).
%time,3.3894927501678467