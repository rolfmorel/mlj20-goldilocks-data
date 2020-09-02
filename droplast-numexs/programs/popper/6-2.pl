f(A,B) :- tail(A,C),f(C,D),head(A,E),cons(E,D,B).
f(A,B) :- tail(A,B).
%time,47.45528697967529
