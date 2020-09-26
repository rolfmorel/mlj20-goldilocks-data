f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,44.58865690231323