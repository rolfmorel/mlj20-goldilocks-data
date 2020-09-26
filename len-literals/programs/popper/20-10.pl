f(A,B) :- empty(A),zero(B).
f(A,B) :- tail(A,D),f(D,C),increment(C,B).
%time,1.8695080280303955
