f(A,B) :- tail(A,B).
f(A,B) :- tail(A,D),head(A,E),f(D,C),cons(E,C,B).
% solved,1
% time,70.38755026399998