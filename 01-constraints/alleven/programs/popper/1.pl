f(V0) :- tail(V0,V1),f(V1),head(V1,V2),even(V2).
f(V0) :- head(V0,V1),last(V0,V1).
% solved,1
% time,6.082466828000002