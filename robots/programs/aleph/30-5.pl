f(A,B):-move_down(A,C),move_down(C,D),f(D,B).
f(E,F):-move_up(E,G),f(G,F).
f(H,I):-move_left(H,J),f(J,K),move_right(K,I).
%time,32.011637926101685