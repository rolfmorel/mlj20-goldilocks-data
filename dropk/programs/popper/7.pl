f(A,B,C) :- tail(A,E),decrement(B,D),f(E,D,C).
f(A,B,C) :- one(B),tail(A,C).
%time,1.0116820335388184
