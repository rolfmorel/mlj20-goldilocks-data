f(A) :- empty(A).
f(A) :- head(A,C),even(C),tail(A,B),f(B).
%time,3.6403651237487793
