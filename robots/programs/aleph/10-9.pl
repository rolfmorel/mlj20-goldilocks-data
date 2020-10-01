f(A,B):-move_up(A,C),f(C,B),at_top(B).
f(D,E):-move_up(D,F),move_up(F,G),f(G,H),move_up(H,I),f(I,E).
f(J,K):-move_up(J,K).
%time,5.212859153747559