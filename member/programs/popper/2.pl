f(A,B) :- tail(A,C),f(C,B).
f(A,B) :- head(A,B).
%time,0.20150279998779297
