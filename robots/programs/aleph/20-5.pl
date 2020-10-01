f(A,B):-move_left(A,C),move_left(C,D),f(D,E),move_right(E,F),move_right(F,B).
f(G,H):-move_down(G,I),move_down(I,J),move_down(J,K),f(K,H).
f(L,M):-move_down(L,N),move_down(N,O),move_right(O,P),f(P,Q),move_left(Q,M).
f(R,S):-move_up(R,T),move_up(T,U),f(U,S).
%time,41.70111680030823