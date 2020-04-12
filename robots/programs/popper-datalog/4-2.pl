f(A,B) :- move_up(A,B).
f(A,B) :- move_up(C,B),f(A,C).
%time,0.5890238285064697