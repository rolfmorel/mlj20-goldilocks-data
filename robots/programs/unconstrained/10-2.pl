f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,39.30781936645508