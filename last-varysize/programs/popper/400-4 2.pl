f(A,B) :- tail(A,C),f(C,B).
f(A,B) :- tail(A,C),empty(C),head(A,B).
%time,2.060823917388916
