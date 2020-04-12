f(A,B) :- move_up(A,B).
f(A,B) :- move_up(C,B),f(A,C).
%time,2.6711134910583496