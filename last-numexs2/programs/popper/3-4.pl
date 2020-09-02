f(A,B) :- tail(A,C),f(C,B).
f(A,B) :- tail(A,C),empty(C),head(A,B).
%time,1.626330852508545
