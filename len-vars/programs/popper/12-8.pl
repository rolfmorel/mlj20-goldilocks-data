f(A,B) :- empty(A),zero(B).
f(A,B) :- tail(A,D),f(D,C),increment(C,B).
%time,31.158790826797485
