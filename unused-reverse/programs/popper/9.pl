f(A,B) :- tail(A,B).
f(A,B) :- tail(A,D),f(D,E),head(A,C),cons(C,E,B).
%time,32.239142179489136
