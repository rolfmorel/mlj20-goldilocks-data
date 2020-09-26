f(A,B) :- move_down(B,C),f(A,C).
f(A,B) :- move_down(A,B).
%time,18.85241198539734