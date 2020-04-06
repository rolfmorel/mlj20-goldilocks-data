f(A,B) :- tail(A,C),f(C,B).
f(A,B) :- tail(A,C),head(A,B),empty(C).
%time,0.7510151863098145
