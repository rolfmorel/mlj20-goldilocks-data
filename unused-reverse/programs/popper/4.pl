f(A,B) :- tail(A,D),f(D,C),head(A,E),cons(E,C,B).
f(A,B) :- tail(A,B).
%time,22.56869888305664
