f(A,B) :- tail(A,B).
f(A,B) :- head(A,D),tail(A,E),f(E,C),cons(D,C,B).
%NUMPROGS: 103
%TIME: 3.2817116719999997
%SOLVING: 1.052449881999996
%GROUNDING: 0.3534281470000007

