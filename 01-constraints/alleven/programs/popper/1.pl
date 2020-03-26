f(A) :- empty(A).
f(A) :- head(A,B),tail(A,C),even(B),f(C).
% solved,1
% time,0.06163377299999995