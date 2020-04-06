f(A,B) :- head(A,B).
f(A,B) :- tail(A,C),f(C,B),tail(C,D),element(D,B).
%time,17.997220993041992
