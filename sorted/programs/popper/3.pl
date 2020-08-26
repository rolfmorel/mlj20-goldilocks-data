f(A) :- head(A,B),tail(A,D),head(D,C),f(D),geq(C,B).
f(A) :- tail(A,B),empty(B).
%time,69.27660489082336
