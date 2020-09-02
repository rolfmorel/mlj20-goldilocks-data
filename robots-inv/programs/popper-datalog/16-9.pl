f(A,B) :- move_up(A,B).
f(A,B) :- move_up(C,B),f(A,C).
%time,8.046793937683105