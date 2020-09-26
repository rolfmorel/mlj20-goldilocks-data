f(A,B) :- tail(A,E),head(A,C),f(E,D),cons(C,D,B).
f(A,B) :- tail(A,B).
%time,22.65349817276001
