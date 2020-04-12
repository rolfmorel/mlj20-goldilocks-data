f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,25.96773672103882