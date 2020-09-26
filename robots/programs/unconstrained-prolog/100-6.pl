f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,32.952478885650635