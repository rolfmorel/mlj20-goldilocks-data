f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,46.72625398635864