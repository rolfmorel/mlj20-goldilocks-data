f(A,B) :- tail(A,C),f(C,D),increment(D,B).
f(A,B) :- empty(A),zero(B).
%time,6.639559984207153
