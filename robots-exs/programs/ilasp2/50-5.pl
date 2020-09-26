f(V1) :- at_top(V1); start_state(V1).
start_state(V1) :- move_up(V2,V1); start_state(V2).
%time,24.555116891860962