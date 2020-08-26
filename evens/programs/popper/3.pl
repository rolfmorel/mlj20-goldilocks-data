f(A) :- tail(A,C),f(C),head(A,B),even(B).
f(A) :- empty(A).
%time,4.317499876022339
