f(A,B) :- tail(A,C),f(C,B).
f(A,B) :- tail(A,C),head(A,B),empty(C).
%time,2.2678279876708984