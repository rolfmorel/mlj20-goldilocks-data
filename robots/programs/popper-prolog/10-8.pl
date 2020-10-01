f(A,B) :- move_up(A,B),at_top(B).
f(A,B) :- move_up(A,C),f(C,B).
%time,15.807931900024414