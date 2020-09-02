f(A,B) :- move_down(B,A).
f(A,B) :- move_up(C,B),f(A,C).
%time,11.984249114990234