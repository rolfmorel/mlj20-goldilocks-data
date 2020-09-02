f(A) :- tail(A,B),empty(B).
f(A) :- tail(A,B),head(B,C),f(B),head(A,D),geq(C,D).
%time,93.02775502204895
