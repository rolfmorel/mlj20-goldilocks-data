f(V1,V0) :- move_down(V0,V1).
f(V0,V2) :- f(V0,V1), move_down(V2,V1).
%time,42.3067889213562