f(A,B):-move_up(A,C),move_up(C,D),move_up(D,E),move_up(E,B),at_top(B).
f(F,G):-move_up(F,H),move_up(H,I),move_up(I,G).
%time,13.045744895935059