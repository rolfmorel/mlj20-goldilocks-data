f(A,B) :- head(A,E),tail(A,D),f(D,C),cons(E,C,B).
f(A,B) :- tail(A,B).
%time,51.49015021324158
