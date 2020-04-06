f(A,B) :- tail(A,C),element(C,B),head(A,B).
f(A,B) :- tail(A,C),f(C,B).
%time,10.790121078491211
