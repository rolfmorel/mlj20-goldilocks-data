f(A,B) :- head(A,D),tail(A,E),f(E,C),cons(D,C,B).
f(A,B) :- tail(A,B).
%time,15.70828914642334
