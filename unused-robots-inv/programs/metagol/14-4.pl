f(A,B):-move_up(A,C),f(C,B).
f(A,B):-move_right(A,C),move_left(C,B).
%time,6.286352872848511