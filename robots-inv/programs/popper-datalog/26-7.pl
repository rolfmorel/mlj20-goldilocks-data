f(A,B) :- move_up(A,C),f(C,B).
f(A,B) :- move_down(B,A).
%time,11.964071273803711