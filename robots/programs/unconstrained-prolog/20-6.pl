f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,37.02404999732971