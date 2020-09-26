f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,31.30542802810669