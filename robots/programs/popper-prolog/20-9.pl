f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,2.0583720207214355