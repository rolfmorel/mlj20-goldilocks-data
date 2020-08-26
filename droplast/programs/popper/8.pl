f(A,B) :- tail(A,E),f(E,C),head(A,D),cons(D,C,B).
f(A,B) :- tail(A,B).
%time,39.51131224632263
