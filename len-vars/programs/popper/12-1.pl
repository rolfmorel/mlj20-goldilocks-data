f(A,B) :- empty(A),zero(B).
f(A,B) :- tail(A,D),f(D,C),increment(C,B).
%time,30.77868914604187
