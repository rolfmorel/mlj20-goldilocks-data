f(A,B) :- move_down(B,C),f(A,C).
f(A,B) :- move_up(A,B).
%time,21.6945378780365