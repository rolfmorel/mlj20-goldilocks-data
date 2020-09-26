f(V1,V1) :- move_up(_,V1).
f(V2,V1) :- f(V0,V1), move_down(V0,V2).
%time,69.04344511032104