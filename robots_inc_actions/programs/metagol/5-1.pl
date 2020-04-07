f(A,B):-move_up(A,C),f(C,B).
f(A,B):-move_right(A,C),move_right(C,B).
%time,0.828486442565918