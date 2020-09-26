f(V0,V0) :- move_right(V0,_).
f(V2,V1) :- f(V0,V1), move_down(V0,V2).
%time,8.172169208526611