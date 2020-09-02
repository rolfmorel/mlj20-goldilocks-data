f(A) :- tail(A,D),head(D,B),head(A,C),geq(B,C),f(D).
f(A) :- tail(A,B),empty(B).
%time,80.3297221660614
