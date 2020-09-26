f(A,B):-move_up(A,C),move_up(C,D),move_up(D,B).
f(E,F):-move_up(E,F).
f(G,H):-move_up(G,I),move_up(I,J),move_up(J,K),move_up(K,H).
%time,13.118690013885498