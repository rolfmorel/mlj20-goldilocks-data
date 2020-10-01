f(A,B):-move_down(A,C),f(C,B).
f(D,E):-move_up(D,F),move_up(F,G),f(G,E).
f(H,I):-move_up(H,I).
%time,7.461055278778076