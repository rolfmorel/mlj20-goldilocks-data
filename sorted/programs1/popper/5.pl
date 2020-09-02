f(A) :- tail(A,B),empty(B).
f(A) :- tail(A,C),f(C),head(C,B),head(A,D),geq(B,D).
%time,88.96993494033813
