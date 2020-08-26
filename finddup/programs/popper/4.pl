f(A,B) :- tail(A,D),f(D,B),tail(D,C),element(C,B).
f(A,B) :- head(A,B).
%time,15.369959115982056
