f(A,B) :- tail(A,D),head(A,C),f(D,E),cons(C,E,B).
f(A,B) :- tail(A,B).
%time,24.166430950164795
