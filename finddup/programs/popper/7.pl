f(A,B) :- tail(A,C),f(C,B).
f(A,B) :- head(A,B),tail(A,C),element(C,B).
%time,4.40198016166687
