f(A,B) :- tail(A,C),element(C,B),head(A,B).
f(A,B) :- tail(A,C),f(C,B).
%time,22.121312141418457
