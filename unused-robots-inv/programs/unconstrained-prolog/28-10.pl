f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,51.40624189376831