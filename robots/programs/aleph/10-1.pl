f(A,B):-move_up(A,B).
f(C,D):-move_up(C,E),move_up(E,F),move_up(F,D).
f(G,H):-move_up(G,I),move_up(I,J),move_up(J,K),move_up(K,L),move_up(L,H).
%time,11.082997798919678