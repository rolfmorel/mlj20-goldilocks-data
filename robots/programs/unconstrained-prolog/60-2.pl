f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,41.68864917755127