f(A,B) :- move_up(A,B).
f(A,B) :- move_up(C,B),f(A,C).
%time,7.487023115158081