f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,1.3532218933105469