f(A,B) :- zero(B),empty(A).
f(A,B) :- tail(A,D),f(D,C),increment(C,B).
%time,1.1324462890625
