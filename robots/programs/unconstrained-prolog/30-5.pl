f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,47.2561240196228