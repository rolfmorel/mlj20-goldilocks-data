f(V0,V1) :- move_up(V0,V1).
f(V2,V1) :- f(V0,V1), move_up(V2,V0).
%time,21.61039090156555