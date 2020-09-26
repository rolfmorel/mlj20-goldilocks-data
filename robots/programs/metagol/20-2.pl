f(A,B):-move_up(A,C),f(C,B).
f(A,B):-move_up(A,B),at_top(B).
%time,20.10005021095276