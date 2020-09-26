f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,38.332955837249756