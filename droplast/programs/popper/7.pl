f(A,B) :- tail(A,C),head(A,D),f(C,E),cons(D,E,B).
f(A,B) :- tail(A,B).
%time,24.595447778701782
