f(A,B):-move_up(A,B).
f(A,B):-move_up(A,C),f(C,B).
%time,0.37752771377563477