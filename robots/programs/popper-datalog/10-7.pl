f(A,B) :- move_up(A,C),f(C,B).
f(A,B) :- move_down(B,A).
%time,4.941183090209961