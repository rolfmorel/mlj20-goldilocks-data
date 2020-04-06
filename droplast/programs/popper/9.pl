f(A,B) :- tail(A,E),f(E,D),head(A,C),cons(C,D,B).
f(A,B) :- tail(A,B).
%time,16.87153697013855
