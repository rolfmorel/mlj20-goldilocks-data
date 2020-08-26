f(A) :- tail(A,C),f(C),head(C,B),head(A,D),geq(B,D).
f(A) :- tail(A,B),empty(B).
%time,91.55239200592041
