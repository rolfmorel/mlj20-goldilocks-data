f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,40.94077229499817