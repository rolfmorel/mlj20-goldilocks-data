f(A) :- tail(A,C),f(C),head(A,B),head(C,D),geq(D,B).
f(A) :- tail(A,B),empty(B).
%time,82.6239881515503
