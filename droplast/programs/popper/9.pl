f(A,B) :- tail(A,D),f(D,E),head(A,C),cons(C,E,B).
f(A,B) :- tail(A,B).
%time,38.85686206817627
