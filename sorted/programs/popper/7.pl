f(A) :- head(A,B),tail(A,D),head(D,C),f(D),geq(C,B).
f(A) :- tail(A,B),empty(B).
%time,59.339964151382446
