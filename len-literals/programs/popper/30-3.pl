f(A,B) :- tail(A,C),f(C,D),increment(D,B).
f(A,B) :- zero(B),empty(A).
%time,6.2256951332092285
