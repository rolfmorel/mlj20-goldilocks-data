f(A,B):-move_up(A,B).
f(C,D):-move_up(C,E),move_up(E,F),move_up(F,G),move_up(G,D).
%time,19.91155505180359