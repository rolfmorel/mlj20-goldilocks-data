f(A,B) :- move_up(C,B),f(A,C).
f(A,B) :- move_up(B,A).
%time,8.629290103912354