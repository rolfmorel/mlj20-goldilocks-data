f(A,B) :- tail(A,C),f(C,B).
f(A,B) :- head(A,B),tail(A,C),empty(C).
%time,2.270092010498047
