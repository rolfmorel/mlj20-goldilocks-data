f(A,B,C) :- tail(A,C),one(B).
f(A,B,C) :- decrement(B,D),tail(A,E),f(E,D,C).
%time,3.23134708404541
