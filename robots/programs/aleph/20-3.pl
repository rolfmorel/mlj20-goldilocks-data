f(A,B):-move_down(A,C),move_down(C,D),f(D,B).
f(E,F):-move_up(E,G),move_up(G,H),move_up(H,I),f(I,F).
f(J,K):-move_up(J,L),f(L,K).
f(M,N):-move_up(M,O),move_up(O,P),move_up(P,Q),move_up(Q,R),move_up(R,N).
%time,42.003782987594604