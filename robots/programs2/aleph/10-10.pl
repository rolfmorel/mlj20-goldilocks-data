f(A,B):-move_up(A,C),move_up(C,D),move_up(D,E),move_up(E,F),move_up(F,B).
f(G,H):-move_up(G,I),move_up(I,J),move_up(J,H).
f(K,L):-move_up(K,L).
f(M,N):-move_up(M,O),move_up(O,N).
%time,13.451879978179932