f(A) :- empty(A).
f(A) :- tail(A,B),head(A,C),even(C),f(B).
%time,4.457602024078369
