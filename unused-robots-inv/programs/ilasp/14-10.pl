f(V1,V1) :- move_down(_,V1).
f(V0,V2) :- f(V0,V1), move_up(V1,V2).
%time,77.49471592903137