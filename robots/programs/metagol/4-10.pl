f(A,B):-move_up(A,B).
f(A,B):-move_up(A,C),move_up(C,B).
%time,0.32155609130859375