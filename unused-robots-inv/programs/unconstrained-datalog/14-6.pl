f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,38.38953924179077