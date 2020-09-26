f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,44.455652952194214