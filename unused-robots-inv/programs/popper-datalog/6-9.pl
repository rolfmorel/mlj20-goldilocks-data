f(A,B) :- move_up(A,B).
f(A,B) :- move_up(C,B),f(A,C).
%time,1.17533278465271