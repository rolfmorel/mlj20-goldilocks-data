f(A,B) :- tail(A,C),f(C,B).
f(A,B) :- head(A,B).
%time,1.381892204284668
