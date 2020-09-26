f(A,B) :- zero(B),empty(A).
f(A,B) :- tail(A,D),f(D,C),increment(C,B).
%time,15.533139944076538
