f(A) :- tail(A,B),head(B,C),f(B),head(A,D),geq(C,D).
f(A) :- tail(A,B),empty(B).
%time,70.54043698310852
