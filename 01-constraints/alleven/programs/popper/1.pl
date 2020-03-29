f(A) :- empty(A).
f(A) :- head(A,B),tail(A,C),even(B),f(C).
% solved,1
% time,5.656186702000002