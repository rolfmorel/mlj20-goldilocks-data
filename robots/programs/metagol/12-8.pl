f(A,B):-move_up(A,B).
f(A,B):-move_up(A,C),f(C,B).
%time,0.43941402435302734