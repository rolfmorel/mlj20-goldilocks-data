f(A,B):-move_up(A,C),move_up(C,D),move_up(D,E),move_up(E,B).
f(F,G):-move_up(F,G).
f(H,I):-move_up(H,J),move_up(J,K),move_up(K,L),move_up(L,M),move_up(M,I).
%time,11.770480871200562