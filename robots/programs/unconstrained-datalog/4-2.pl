f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,22.777550220489502