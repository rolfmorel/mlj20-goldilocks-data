f(A,B) :- head(A,B),tail(A,C),empty(C).
f(A,B) :- tail(A,C),f(C,B).
%time,0.4616820812225342
