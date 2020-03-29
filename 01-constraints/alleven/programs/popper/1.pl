f(A) :- empty(A).
f(A) :- head(A,B),tail(A,C),even(B),f(C).
% solved,1
% time,5.939703242999998