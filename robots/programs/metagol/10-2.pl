f(A,B):-move_up(A,B).
f(A,B):-move_up(A,C),f(C,B).
%time,0.34192991256713867