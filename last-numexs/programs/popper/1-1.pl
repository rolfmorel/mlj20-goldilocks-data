f(A,B) :- tail(A,C),f(C,B),odd(B).
f(A,B) :- head(A,B).
%time,0.33487606048583984
