f(A,B) :- move_left(A,C),move_right(C,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,1.0649290084838867