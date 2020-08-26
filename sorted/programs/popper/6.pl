f(A) :- head(A,C),tail(A,D),head(D,B),geq(B,C),f(D).
f(A) :- tail(A,B),empty(B).
%time,109.13841104507446
