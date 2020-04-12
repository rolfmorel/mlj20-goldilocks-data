f(V1,V1) :- move_right(_,V1).
f(V0,V2) :- f(V0,V1), move_up(V1,V2).
%time,301.087525844574