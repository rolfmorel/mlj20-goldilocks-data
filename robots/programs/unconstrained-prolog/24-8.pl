f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,49.873549938201904