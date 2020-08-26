f(A,B) :- tail(A,C),tail(C,D),f(C,B),element(D,B).
f(A,B) :- head(A,B).
%time,14.575906753540039
