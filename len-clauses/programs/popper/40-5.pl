f(A,B) :- zero(B),empty(A).
f(A,B) :- tail(A,C),f(C,D),increment(D,B).
%time,18.215399980545044
