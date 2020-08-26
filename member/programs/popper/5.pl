f(A,B) :- head(A,B).
f(A,B) :- tail(A,C),f(C,B).
%time,0.10968589782714844
