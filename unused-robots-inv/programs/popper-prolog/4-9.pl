f(A,B) :- move_up(A,C),f(C,B).
f(A,B) :- move_up(A,B).
%time,6.1195619106292725