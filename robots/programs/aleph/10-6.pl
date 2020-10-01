f(A,B):-move_down(A,C),f(C,B),at_top(B).
f(D,E):-move_up(D,F),move_up(F,G),f(G,E).
f(H,I):-move_up(H,J),move_up(J,K),move_up(K,I).
%time,7.548027038574219