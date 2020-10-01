f(A,B) :- move_right(A,C),move_left(C,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,19.082021713256836