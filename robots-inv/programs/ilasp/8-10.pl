f(V1,V0) :- move_down(V0,V1).
f(V2,V1) :- f(V0,V1), move_down(V0,V2).
%time,38.626359939575195