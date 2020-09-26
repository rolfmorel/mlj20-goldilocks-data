f(V1) :- start_state(V1).
start_state(V1) :- move_up(V2,V1); start_state(V2).
%time,16.406246185302734