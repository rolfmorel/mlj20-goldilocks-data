f(A,B):-move_down(A,C),f(C,B).
f(D,E):-move_up(D,F),move_left(F,G),f(G,H),move_right(H,E).
f(I,J):-move_up(I,K),move_up(K,L),move_up(L,M),move_up(M,N),move_up(N,J).
%time,4.61820387840271