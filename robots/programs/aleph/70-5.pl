f(A,B):-move_up(A,C),f(C,B).
f(D,E):-move_up(D,F),move_up(F,G),move_up(G,H),f(H,E).
%time,26.79016613960266