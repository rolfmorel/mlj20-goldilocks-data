f(A,B,C) :- decrement(B,D),tail(A,E),f(E,D,C).
f(A,B,C) :- tail(A,C),one(B).
%time,4.211496829986572