f(A,B) :- move_down(B,A).
f(A,B) :- move_up(C,B),f(A,C).
%time,1.3067710399627686