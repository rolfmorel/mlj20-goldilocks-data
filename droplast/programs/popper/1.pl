f(A,B) :- tail(A,D),f(D,E),head(A,C),cons(C,E,B).
f(A,B) :- tail(A,B).
%time,42.12960886955261
