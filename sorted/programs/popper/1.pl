f(A) :- head(A,C),tail(A,D),head(D,B),geq(B,C),f(D).
f(A) :- tail(A,B),empty(B).
%time,55.77049016952515
