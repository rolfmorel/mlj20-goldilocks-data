f(A,B) :- head(A,B).
f(A,B) :- tail(A,C),f(C,B).
%time,0.13591599464416504
