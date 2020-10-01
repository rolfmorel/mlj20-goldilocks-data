f(A,B):-move_down(A,C),f(C,B).
f(D,E):-move_up(D,F),move_left(F,G),move_left(G,H),f(G,I),move_right(I,E).
f(J,K):-move_up(J,L),move_up(L,M),move_up(M,N),move_up(N,K).
%time,7.063069820404053