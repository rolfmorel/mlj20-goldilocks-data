f(A,B) :- tail(A,C),empty(C),head(A,B).
f(A,B) :- tail(A,C),f(C,B).
%time,7.496212959289551
