f(A,B):-move_up(A,C),f(C,B).
f(A,B):-move_right(A,C),move_left(C,B).
%time,0.7602720260620117