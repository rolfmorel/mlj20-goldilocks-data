f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,36.53508710861206