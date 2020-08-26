f(A,B,C) :- tail(A,D),decrement(B,E),f(D,E,C).
f(A,B,C) :- one(B),tail(A,C).
%time,0.8729422092437744
