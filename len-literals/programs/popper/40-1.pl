f(A,B) :- empty(A),zero(B).
f(A,B) :- tail(A,C),f(C,D),increment(D,B).
%time,1.8544681072235107
