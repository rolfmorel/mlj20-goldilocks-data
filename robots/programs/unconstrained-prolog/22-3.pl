f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,55.109975814819336