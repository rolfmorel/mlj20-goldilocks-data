f(A,B) :- tail(A,C),f(C,B).
f(A,B) :- head(A,B),even(B).
%time,0.1838078498840332
