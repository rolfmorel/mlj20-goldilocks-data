f(A,B):-move_down(A,C),move_right(C,D),f(D,E),move_left(E,B).
f(F,G):-move_up(F,H),f(H,G).
%time,18.9949369430542