f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,42.808237075805664