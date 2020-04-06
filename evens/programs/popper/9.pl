f(A) :- empty(A).
f(A) :- head(A,C),even(C),tail(A,B),f(B).
%time,4.618113994598389
