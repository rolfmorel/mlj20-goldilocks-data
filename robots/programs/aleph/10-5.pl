f(A,B):-move_up(A,C),f(C,B),at_top(B).
f(D,E):-move_up(D,E).
f(F,G):-move_up(F,H),move_up(H,I),move_up(I,J),move_up(J,K),move_up(K,G).
%time,3.8705270290374756