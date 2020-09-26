f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,41.67453384399414