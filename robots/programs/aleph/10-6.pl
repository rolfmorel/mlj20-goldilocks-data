f(A,B):-move_up(A,B).
f(C,D):-move_up(C,E),move_up(E,F),move_up(F,G),move_up(G,D).
f(H,I):-move_up(H,J),move_up(J,K),move_up(K,L),move_up(L,M),move_up(M,I).
f(N,O):-move_up(N,P),move_up(P,Q),move_up(Q,O).
%time,11.67136812210083