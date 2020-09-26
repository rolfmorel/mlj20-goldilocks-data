f(A,B):-move_up(A,C),move_up(C,B),at_top(B).
f(D,E):-move_up(D,E).
f(F,G):-move_up(F,H),move_up(H,I),move_up(I,J),move_up(J,G).
%time,10.85268783569336