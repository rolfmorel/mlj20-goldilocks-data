f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,37.03361797332764