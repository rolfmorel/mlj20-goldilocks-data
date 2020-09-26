f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,52.41890621185303