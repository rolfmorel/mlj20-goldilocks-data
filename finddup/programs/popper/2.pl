f(A,B) :- tail(A,C),f(C,B).
f(A,B) :- head(A,B),tail(A,C),element(C,B).
%time,12.345178127288818
