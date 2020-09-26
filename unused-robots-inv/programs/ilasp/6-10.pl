f(V0,V1) :- move_up(V0,V1).
f(V2,V1) :- f(V0,V1), move_down(V0,V2).
%time,110.88416004180908