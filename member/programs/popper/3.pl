f(A,B) :- tail(A,C),f(C,B).
f(A,B) :- head(A,B).
%time,0.32556581497192383