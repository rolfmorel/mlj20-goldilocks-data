f(A,B):-move_right(A,C),f(C,D),move_left(D,B).
f(E,F):-move_down(E,G),move_right(G,H),f(H,I),move_left(I,F).
%time,16.701615810394287