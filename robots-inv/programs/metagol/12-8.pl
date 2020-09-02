f(A,B):-move_down(B,A).
f(A,B):-move_up(A,C),f(C,B).
%time,0.4256877899169922