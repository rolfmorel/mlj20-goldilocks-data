f(A,B) :- tail(A,C),f(C,B).
f(A,B) :- tail(A,C),element(C,B),head(A,B).
%time,15.155703067779541
