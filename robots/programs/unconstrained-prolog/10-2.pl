f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,33.8039710521698