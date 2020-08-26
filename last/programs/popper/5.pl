f(A,B) :- tail(A,C),empty(C),head(A,B).
f(A,B) :- tail(A,C),f(C,B).
%time,0.64345383644104
