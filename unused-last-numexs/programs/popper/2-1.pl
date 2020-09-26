f(A,B) :- tail(A,E),tail(E,D),tail(D,C),f(C,B).
f(A,B) :- head(A,B).
%time,0.3833186626434326
