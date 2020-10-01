f(A,B):-move_up(A,B).
f(A,B):-move_up(A,C),f(C,B).
%time,0.5965230464935303