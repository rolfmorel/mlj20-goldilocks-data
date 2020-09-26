start_state(V1) :- move_down(V1,V2); start_state(V2).
f(V1) :- at_top(V1); start_state(V1).
%time,21.828636169433594