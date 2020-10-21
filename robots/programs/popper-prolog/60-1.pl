f(A,B) :- move_up(A,B),at_top(B).
f(A,B) :- move_up(A,C),f(C,B).
%time,26.80236792564392