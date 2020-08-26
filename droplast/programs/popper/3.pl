f(A,B) :- tail(A,E),f(E,C),head(A,D),cons(D,C,B).
f(A,B) :- tail(A,B).
%time,20.698004245758057
