f(A,B) :- empty(A),zero(B).
f(A,B) :- tail(A,C),f(C,D),increment(D,B).
%time,3.104452133178711
