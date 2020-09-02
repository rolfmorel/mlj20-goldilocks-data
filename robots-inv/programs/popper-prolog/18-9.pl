f(A,B) :- move_down(B,C),f(A,C).
f(A,B) :- move_down(A,B).
%time,18.95923399925232