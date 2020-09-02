f(V0,V0) :- move_up(V0,_).
f(V0,V2) :- f(V0,V1), move_up(V1,V2).
%time,1.136305809020996