f(A,B,C) :- tail(A,C),one(B).
f(A,B,C) :- tail(A,D),decrement(B,E),f(D,E,C).
%time,3.6662790775299072
