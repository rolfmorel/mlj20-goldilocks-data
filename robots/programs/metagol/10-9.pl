f(A,B):-move_up(A,B),at_top(B).
f(A,B):-move_up(A,C),f(C,B).
%time,0.5991470813751221