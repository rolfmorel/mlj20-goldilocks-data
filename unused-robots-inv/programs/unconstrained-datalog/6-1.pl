f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,30.676154851913452