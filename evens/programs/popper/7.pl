f(A) :- empty(A).
f(A) :- head(A,C),even(C),tail(A,B),f(B).
%time,5.4284820556640625
