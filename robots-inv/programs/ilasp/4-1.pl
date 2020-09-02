f(V0,V1) :- move_up(V0,V1).
f(V0,V2) :- f(V0,V1), move_up(V1,V2).
%time,1.000119924545288