f(A,B):-move_up(A,C),move_up(C,B).
f(D,E):-move_up(D,F),move_up(F,G),move_up(G,H),move_up(H,I),move_up(I,E).
%time,14.481083869934082