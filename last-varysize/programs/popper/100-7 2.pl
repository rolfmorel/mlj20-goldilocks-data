f(A,B) :- tail(A,C),f(C,B).
f(A,B) :- tail(A,C),head(A,B),empty(C).
%time,1.4217438697814941