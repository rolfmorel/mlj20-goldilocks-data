f(A,B) :- move_up(A,B).
f(A,B) :- move_up(C,B),f(A,C).
%time,12.824689865112305