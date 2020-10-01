f(A,B):-move_down(A,C),f(C,B).
f(D,E):-move_down(D,F),f(F,E).
f(G,H):-move_down(G,I),move_down(I,J),move_right(J,K),f(K,L),move_left(L,H).
f(M,N):-move_up(M,O),move_up(O,P),move_up(P,N),at_top(N).
%time,18.1131649017334