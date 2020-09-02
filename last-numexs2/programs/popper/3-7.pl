f(A,B) :- tail(A,C),f(C,B).
f(A,B) :- head(A,B),even(B).
%time,0.17205190658569336
