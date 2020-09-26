f(A,B) :- zero(B),empty(A).
f(A,B) :- tail(A,D),f(D,C),increment(C,B).
%time,0.5481219291687012
