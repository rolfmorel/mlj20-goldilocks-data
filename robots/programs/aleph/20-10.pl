f(A,B):-move_up(A,C),f(C,B).
f(D,E):-move_left(D,F),move_left(F,G),f(G,H),move_right(H,I),move_right(I,E).
f(J,K):-move_up(J,L),move_right(L,M),f(M,N),move_left(N,K).
f(O,P):-move_down(O,Q),move_down(Q,R),move_down(R,S),move_down(S,T),f(T,P).
%time,41.59042477607727