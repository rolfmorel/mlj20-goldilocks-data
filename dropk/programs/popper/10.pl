f(A,B,C) :- tail(A,D),decrement(B,E),f(D,E,C).
f(A,B,C) :- tail(A,C),one(B).
%time,3.1186940670013428
