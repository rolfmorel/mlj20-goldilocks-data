f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,28.792372941970825