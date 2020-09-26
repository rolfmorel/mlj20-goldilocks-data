f(A,B) :- tail(A,C),head(A,B),empty(C).
f(A,B) :- tail(A,C),f(C,B).
%time,2.7811639308929443
