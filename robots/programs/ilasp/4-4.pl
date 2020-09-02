f(V0,V1) :- move_up(V0,V1).
f(V0,V2) :- f(V0,V1), f(V1,V2).
%time,19.417471885681152