f(A,B) :- zero(B),empty(A).
f(A,B) :- tail(A,D),f(D,C),increment(C,B).
%time,30.79102897644043
