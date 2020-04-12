f(V1,V0) :- move_down(V0,V1).
f(V2,V1) :- f(V0,V1), move_up(V2,V0).
%time,38.500420808792114