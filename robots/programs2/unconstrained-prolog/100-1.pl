f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,27.944504261016846