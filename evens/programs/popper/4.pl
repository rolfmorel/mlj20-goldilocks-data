f(A) :- empty(A).
f(A) :- head(A,C),even(C),tail(A,B),f(B).
%time,4.769816160202026
