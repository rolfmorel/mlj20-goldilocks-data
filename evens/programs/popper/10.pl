f(A) :- empty(A).
f(A) :- head(A,C),even(C),tail(A,B),f(B).
%time,3.8531720638275146
