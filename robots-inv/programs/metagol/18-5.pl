f(A,B):-move_up(A,C),move_up(C,B).
f(A,B):-move_up(A,C),f(C,B).
%time,0.2731919288635254