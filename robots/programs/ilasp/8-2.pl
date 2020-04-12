f(V0,V1) :- move_up(V0,V1).
f(V2,V1) :- f(V0,V1), move_up(V2,V0).
%time,9.496850728988647