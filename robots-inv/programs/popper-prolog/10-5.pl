f(A,B) :- move_up(A,C),f(C,B).
f(A,B) :- move_up(A,B).
%time,5.682345867156982