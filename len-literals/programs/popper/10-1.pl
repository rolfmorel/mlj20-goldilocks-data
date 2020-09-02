f(A,B) :- tail(A,C),f(C,D),increment(D,B).
f(A,B) :- zero(B),empty(A).
%time,4.174865245819092
