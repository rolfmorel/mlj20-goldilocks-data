f(A,B) :- tail(A,C),head(A,B),empty(C).
f(A,B) :- tail(A,C),f(C,B).
%time,15.502985000610352
