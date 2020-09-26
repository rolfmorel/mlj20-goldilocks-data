f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,52.762052059173584