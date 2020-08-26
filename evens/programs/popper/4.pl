f(A) :- empty(A).
f(A) :- tail(A,C),f(C),head(A,B),even(B).
%time,6.3268959522247314
