f(A,B):-move_up(A,C),move_up(C,D),move_up(D,E),move_up(E,B).
f(F,G):-move_up(F,H),move_up(H,G).
f(I,J):-move_up(I,K),move_up(K,L),move_up(L,J).
f(M,N):-move_up(M,N).
%time,7.437066078186035