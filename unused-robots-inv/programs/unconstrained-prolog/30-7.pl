f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,48.636178970336914