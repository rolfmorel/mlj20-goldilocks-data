f(A) :- head(A,B),odd(B).
f(A) :- tail(A,C),head(C,B),even(B).
%time,0.5063827037811279
