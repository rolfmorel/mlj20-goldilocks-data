f(A,B) :- move_up(A,B).
f(A,B) :- move_up(C,B),f(A,C).
%time,7.316798210144043