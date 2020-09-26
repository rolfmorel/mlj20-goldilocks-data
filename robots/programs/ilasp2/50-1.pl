f(V1) :- start_state(V1).
start_state(V1) :- move_down(V1,V2); start_state(V2).
%time,43.872130155563354