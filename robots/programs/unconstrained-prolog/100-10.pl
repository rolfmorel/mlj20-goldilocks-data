f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,23.906066179275513