f(A,B):-move_left(A,C),move_up(C,D),move_up(D,E),f(E,F),move_right(F,B).
%time,23.2882821559906