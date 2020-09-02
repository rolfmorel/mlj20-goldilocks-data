f(A,B) :- tail(A,C),f(C,B).
f(A,B) :- head(A,B),tail(A,C),empty(C).
%time,1.706092119216919
