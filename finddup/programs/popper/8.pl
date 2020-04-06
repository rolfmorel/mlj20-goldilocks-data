f(A,B) :- tail(A,C),f(C,B).
f(A,B) :- tail(A,C),element(C,B),head(A,B).
%time,26.46069884300232
