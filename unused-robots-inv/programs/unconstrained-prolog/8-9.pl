f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,53.822733879089355