f(A,B) :- tail(A,B).
f(A,B) :- tail(A,D),f(D,E),head(A,C),cons(C,E,B).
%time,31.939141988754272
