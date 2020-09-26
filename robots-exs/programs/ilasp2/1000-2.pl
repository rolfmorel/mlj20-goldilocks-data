f(V1) :- at_top(V1); start_state(V1).
start_state(V1) :- move_up(V2,V1); start_state(V2).
%time,25.91186809539795