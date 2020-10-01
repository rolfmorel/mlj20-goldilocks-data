f(A,B):-move_up(A,C),move_up(C,D),move_up(D,E),f(E,B).
f(F,G):-move_down(F,H),move_down(H,I),f(I,G).
%time,22.527561902999878