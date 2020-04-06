f(A,B) :- tail(A,D),f(D,C),increment(C,B).
f(A,B) :- zero(B),empty(A).
%time,11.670347929000854
