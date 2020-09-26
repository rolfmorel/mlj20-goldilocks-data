f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,52.488157987594604