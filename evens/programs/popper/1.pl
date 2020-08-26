f(A) :- empty(A).
f(A) :- tail(A,B),head(A,C),even(C),f(B).
%time,6.4003541469573975
