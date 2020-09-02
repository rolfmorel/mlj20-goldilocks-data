f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,20.09386968612671