f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,36.35428214073181