f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,42.579052209854126