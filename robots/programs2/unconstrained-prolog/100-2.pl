f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,29.770797967910767