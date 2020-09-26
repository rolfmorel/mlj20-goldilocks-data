f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,41.7215461730957