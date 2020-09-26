f(V0,V0) :- move_right(V0,_).
f(V2,V1) :- f(V0,V1), move_up(V2,V0).
%time,1.4603018760681152