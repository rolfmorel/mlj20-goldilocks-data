f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,51.5682110786438