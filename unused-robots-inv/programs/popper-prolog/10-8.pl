f(A,B) :- move_down(B,C),f(A,C).
f(A,B) :- move_down(A,B).
%time,21.43105673789978