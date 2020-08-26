f(A,B) :- head(A,B).
f(A,B) :- tail(A,C),tail(C,D),f(C,B),element(D,B).
%time,12.540415048599243
