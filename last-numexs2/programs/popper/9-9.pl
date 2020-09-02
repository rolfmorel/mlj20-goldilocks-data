f(A,B) :- tail(A,C),f(C,B).
f(A,B) :- tail(A,C),empty(C),head(A,B).
%time,0.4947078227996826
