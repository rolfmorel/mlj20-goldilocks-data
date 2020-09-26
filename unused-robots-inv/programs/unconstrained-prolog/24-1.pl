f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,50.83202004432678