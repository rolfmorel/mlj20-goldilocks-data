f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,22.065449714660645