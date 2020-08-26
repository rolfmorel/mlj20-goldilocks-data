f(A,B,C) :- tail(A,E),decrement(B,D),f(E,D,C).
f(A,B,C) :- one(B),tail(A,C).
%time,0.8847157955169678
