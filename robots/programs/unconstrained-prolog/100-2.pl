f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,31.351993799209595