f(A) :- empty(A).
f(A) :- head(A,C),even(C),tail(A,B),f(B).
%time,2.740753173828125
