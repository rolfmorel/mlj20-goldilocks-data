f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,53.0333366394043