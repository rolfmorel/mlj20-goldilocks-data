f(A,B):-move_up(A,C),f(C,B),at_top(B).
f(D,E):-move_up(D,F),f(F,G),f(G,E).
f(H,I):-move_up(H,I).
%time,12.921378135681152