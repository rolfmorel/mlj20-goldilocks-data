f(A,B) :- tail(A,C),head(A,B),empty(C).
f(A,B) :- tail(A,C),f(C,B).
%time,8.090270042419434