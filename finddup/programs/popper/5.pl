f(A,B) :- tail(A,D),tail(D,C),element(C,B),f(D,B).
f(A,B) :- head(A,B).
%time,16.165102005004883
