f(A,B) :- tail(A,C),f(C,B).
f(A,B) :- head(A,B).
%time,1.640286922454834
