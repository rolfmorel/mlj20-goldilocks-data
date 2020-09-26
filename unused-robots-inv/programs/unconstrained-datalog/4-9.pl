f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,31.461079120635986