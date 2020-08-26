f(A) :- empty(A).
f(A) :- tail(A,B),head(A,C),even(C),f(B).
%time,5.592375040054321
