f(A) :- tail(A,D),head(A,B),f(D),head(D,C),geq(C,B).
f(A) :- tail(A,B),empty(B).
%time,54.01768088340759
