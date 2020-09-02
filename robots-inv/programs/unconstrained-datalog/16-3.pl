f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,40.91715407371521