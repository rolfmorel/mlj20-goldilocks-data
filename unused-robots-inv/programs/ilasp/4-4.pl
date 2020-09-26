f(V0,V0) :- move_right(V0,_).
f(V0,V2) :- f(V0,V1), move_down(V2,V1).
%time,7.429971218109131