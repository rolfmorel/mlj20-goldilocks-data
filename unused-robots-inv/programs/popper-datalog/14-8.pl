f(A,B) :- move_up(A,B).
f(A,B) :- move_up(C,B),f(A,C).
%time,7.0764360427856445