f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,34.48087501525879