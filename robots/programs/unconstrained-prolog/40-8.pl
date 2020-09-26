f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,42.073360204696655