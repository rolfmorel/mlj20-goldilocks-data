f(A,B) :- move_up(A,B),at_top(B).
f(A,B) :- move_up(A,C),f(C,B).
%time,25.522403240203857