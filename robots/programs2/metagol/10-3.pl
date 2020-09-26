f(A,B):-move_up(A,C),f(C,B).
f(A,B):-move_up(A,B),at_top(B).
%time,0.9582090377807617