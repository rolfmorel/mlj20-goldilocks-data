f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,24.16750979423523