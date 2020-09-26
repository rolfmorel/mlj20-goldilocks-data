f(A,B):-move_up(A,C),f(C,B).
f(A,B):-move_down(A,C),move_up(C,B).
%time,0.6125719547271729