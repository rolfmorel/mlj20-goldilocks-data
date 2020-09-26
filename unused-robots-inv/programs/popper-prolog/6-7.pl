f(A,B) :- move_up(A,C),f(C,B).
f(A,B) :- move_up(A,B).
%time,6.233510255813599