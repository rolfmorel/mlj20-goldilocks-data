f(A,B) :- move_up(A,B).
f(A,B) :- move_up(C,B),f(A,C).
%time,13.45818281173706