f(A) :- empty(A).
f(A) :- head(A,B),tail(A,C),even(B),f(C).
%time,4.685551166534424
