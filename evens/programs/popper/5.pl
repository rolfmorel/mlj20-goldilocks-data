f(A) :- tail(A,B),head(A,C),even(C),f(B).
f(A) :- empty(A).
%time,2.706892967224121
