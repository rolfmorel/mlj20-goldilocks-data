f(A,B) :- head(A,B),tail(A,C),empty(C).
f(A,B) :- tail(A,C),f(C,B).
%time,48.249922037124634
