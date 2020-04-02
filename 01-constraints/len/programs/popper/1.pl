f(V0,V1) :- zero2(V1),empty(V0).
f(V0,V1) :- tail(V0,V3),f(V3,V2),succ(V2,V1).
% solved,1
% time,86.53412521800016