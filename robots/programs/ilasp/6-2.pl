f(V1,V1) :- move_left(_,V1).
f(V2,V1) :- f(V0,V1), move_up(V2,V0).
%time,8.918807744979858