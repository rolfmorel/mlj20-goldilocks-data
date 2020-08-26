f(A) :- tail(A,B),head(A,C),even(C),f(B).
f(A) :- empty(A).
%time,4.666818141937256
