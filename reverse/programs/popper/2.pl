f(A,B) :- head(A,E),tail(A,C),f(C,D),cons(E,D,B).
f(A,B) :- tail(A,B).
%time,24.941299200057983
