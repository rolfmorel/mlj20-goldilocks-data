f(A,B) :- head(A,B).
f(A,B) :- tail(A,C),f(C,B).
%time,0.2682211399078369
