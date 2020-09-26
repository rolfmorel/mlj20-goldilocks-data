f(A,B) :- empty(A),zero(B).
f(A,B) :- tail(A,C),f(C,D),increment(D,B).
%time,2.7154998779296875
