f(A,B) :- move_up(A,B),at_top(B).
f(A,B) :- move_up(A,C),f(C,B).
%time,17.888226985931396