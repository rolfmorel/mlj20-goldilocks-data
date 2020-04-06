f(A,B) :- tail(A,C),f(C,B).
f(A,B) :- tail(A,C),element(C,B),head(A,B).
%time,15.352760076522827
