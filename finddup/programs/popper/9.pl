f(A,B) :- head(A,B),tail(A,C),element(C,B).
f(A,B) :- tail(A,C),f(C,B).
%time,12.691112041473389
