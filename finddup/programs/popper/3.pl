f(A,B) :- head(A,B),tail(A,C),element(C,B).
f(A,B) :- tail(A,C),f(C,B).
%time,24.33913493156433
