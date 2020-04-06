f(A) :- head(A,B),tail(A,C),even(B),f(C).
f(A) :- empty(A).
%time,2.3338589668273926
