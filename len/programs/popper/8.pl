f(A,B) :- tail(A,C),f(C,D),increment(D,B).
f(A,B) :- zero(B),empty(A).
%time,8.93978500366211
