f(A,B) :- tail(A,D),f(D,C),increment(C,B).
f(A,B) :- empty(A),zero(B).
%time,5.883801221847534
