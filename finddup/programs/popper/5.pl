f(A,B) :- head(A,B),tail(A,C),element(C,B).
f(A,B) :- tail(A,C),f(C,B).
%NUMPROGS: 1033
%TIME: 29.105012357999996
%SOLVING: 5.822686388000083
%GROUNDING: 20.63062201799999

