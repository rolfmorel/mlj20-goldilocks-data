f(A,B) :- zero(B),empty(A).
f(A,B) :- tail(A,C),f(C,D),increment(D,B).
%time,48.212740659713745
