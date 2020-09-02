f(A,B) :- tail(A,C),empty(C),head(A,B).
f(A,B) :- tail(A,C),f(C,B).
%time,1.0374972820281982
