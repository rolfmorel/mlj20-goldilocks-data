f(A,B) :- tail(A,C),f(C,B).
f(A,B) :- head(A,B).
%time,0.16686701774597168
