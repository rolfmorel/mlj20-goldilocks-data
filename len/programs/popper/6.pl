f(A,B) :- tail(A,D),f(D,C),increment(C,B).
f(A,B) :- empty(A),zero(B).
%time,7.738471984863281
