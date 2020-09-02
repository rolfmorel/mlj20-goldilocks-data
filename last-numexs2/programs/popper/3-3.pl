f(A,B) :- tail(A,C),f(C,B).
f(A,B) :- head(A,B),even(B).
%time,0.1558849811553955
