f(V0,V0) :- move_up(V0,_).
f(V0,V2) :- f(V0,V1), move_down(V2,V1).
%time,32.11240077018738