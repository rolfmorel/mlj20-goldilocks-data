f(A,B) :- move_down(B,A).
f(A,B) :- move_up(A,C),f(C,B).
%time,3.3525583744049072