f(A,B) :- move_down(B,C),f(A,C).
f(A,B) :- move_up(A,B).
%time,21.533545970916748