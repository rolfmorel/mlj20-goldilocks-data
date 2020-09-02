f(A,B) :- tail(A,C),f(C,B).
f(A,B) :- tail(A,C),head(A,B),empty(C).
%time,13.863027811050415
