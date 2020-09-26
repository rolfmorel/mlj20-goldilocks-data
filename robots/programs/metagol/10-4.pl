f(A,B):-move_up(A,C),f(C,B).
f(A,B):-move_down(A,C),move_up(C,B).
%time,1.5794811248779297