f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,34.10474920272827