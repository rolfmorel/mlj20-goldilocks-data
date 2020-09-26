f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,32.853216886520386