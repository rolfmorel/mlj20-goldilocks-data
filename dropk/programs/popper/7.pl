f(A,B,C) :- tail(A,D),decrement(B,E),f(D,E,C).
f(A,B,C) :- tail(A,C),one(B).
%time,4.081029891967773
