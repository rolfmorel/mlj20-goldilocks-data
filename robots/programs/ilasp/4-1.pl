f(V0,V0) :- move_down(V0,_).
f(V2,V1) :- f(V0,V1), move_up(V2,V0).
%time,5.007073163986206