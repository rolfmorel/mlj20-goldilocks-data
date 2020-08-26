f(A,B,C) :- one(B),tail(A,C).
f(A,B,C) :- tail(A,D),decrement(B,E),f(D,E,C).
%time,0.8732988834381104
