f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,43.845359086990356