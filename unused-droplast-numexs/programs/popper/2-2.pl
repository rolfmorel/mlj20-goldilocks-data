f(A,B) :- tail(A,C),f(C,D),head(A,E),cons(E,D,B).
f(A,B) :- tail(A,B).
%time,42.73967099189758