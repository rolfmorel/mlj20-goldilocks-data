f(A,B):-move_up(A,C),move_up(C,D),move_up(D,E),move_up(E,F),move_up(F,B).
f(G,H):-move_up(G,I),move_up(I,J),move_up(J,K),move_up(K,H).
f(L,M):-move_up(L,M).
%time,11.960295915603638