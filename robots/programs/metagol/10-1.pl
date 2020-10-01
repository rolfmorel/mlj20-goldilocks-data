f(A,B):-move_up(A,C),f(C,B).
f(A,B):-move_left(A,C),move_right(C,B).
%time,0.6166388988494873