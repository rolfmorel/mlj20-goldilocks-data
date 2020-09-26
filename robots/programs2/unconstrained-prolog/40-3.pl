f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,40.174838066101074