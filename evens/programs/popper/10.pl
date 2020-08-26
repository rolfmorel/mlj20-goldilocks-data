f(A) :- empty(A).
f(A) :- tail(A,C),f(C),head(A,B),even(B).
%time,3.3383936882019043
