f(A) :- head(A,C),tail(A,B),head(B,D),geq(D,C),f(B).
f(A) :- tail(A,B),empty(B).
%time,101.49433994293213
