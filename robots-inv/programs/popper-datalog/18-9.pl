f(A,B) :- move_up(C,B),f(A,C).
f(A,B) :- move_up(B,A).
%time,9.429583072662354