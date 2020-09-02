f(A) :- tail(A,D),head(D,B),head(A,C),geq(B,C),f(D).
f(A) :- tail(A,B),empty(B).
%time,87.34711503982544
