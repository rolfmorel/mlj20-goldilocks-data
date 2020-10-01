f(A,B):-move_up(A,C),move_right(C,D),f(D,E),move_left(E,B).
f(F,G):-move_right(F,H),move_right(H,I),f(I,J),move_left(J,K),move_left(K,G).
f(L,M):-move_down(L,N),move_down(N,O),move_down(O,P),f(P,M).
%time,21.02398681640625