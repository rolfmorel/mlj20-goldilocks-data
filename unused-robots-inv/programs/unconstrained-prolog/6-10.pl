f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,54.05821776390076