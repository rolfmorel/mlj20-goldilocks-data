f(A,B):-move_up(A,C),move_up(C,D),f(D,B).
f(E,F):-move_down(E,G),f(G,F).
f(H,I):-move_up(H,J),move_up(J,I).
%time,4.401580095291138