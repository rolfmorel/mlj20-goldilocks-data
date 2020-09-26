f(V1) :- start_state(V1).
start_state(V1) :- move_up(V2,V1); start_state(V2).
%time,51.1042320728302