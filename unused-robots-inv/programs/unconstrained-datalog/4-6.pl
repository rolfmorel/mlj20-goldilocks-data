f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,30.072261810302734