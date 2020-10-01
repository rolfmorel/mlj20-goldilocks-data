f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,37.48364496231079