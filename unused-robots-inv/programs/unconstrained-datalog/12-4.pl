f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,36.62094712257385