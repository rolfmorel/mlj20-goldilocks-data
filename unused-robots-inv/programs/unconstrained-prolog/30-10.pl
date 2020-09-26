f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,45.82520079612732