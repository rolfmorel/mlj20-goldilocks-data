f(V1,V0) :- move_up(V0,V1).
f(V0,V2) :- f(V0,V1), move_down(V2,V1).
%time,38.14072561264038