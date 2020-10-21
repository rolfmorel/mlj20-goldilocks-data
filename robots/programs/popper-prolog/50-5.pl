f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B),at_top(B).
%time,29.654248237609863