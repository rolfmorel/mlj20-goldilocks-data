f(A,B):-move_up(A,C),move_up(C,D),move_up(D,E),move_up(E,B).
f(F,G):-move_up(F,H),move_up(H,I),move_up(I,J),move_up(J,K),move_up(K,G).
f(L,M):-move_up(L,M).
%time,11.476082801818848