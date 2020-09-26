f(A,B) :- move_down(B,A).
f(A,B) :- move_down(C,A),f(C,B).
%time,19.47051215171814