f(A,B):-move_up(A,C),f(C,B).
f(D,E):-move_up(D,F),move_up(F,G),f(G,E).
f(H,I):-move_up(H,I).
%time,3.9168508052825928