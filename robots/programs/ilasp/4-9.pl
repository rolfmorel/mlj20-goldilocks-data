f(V1,V1) :- move_up(_,V1).
f(V0,V2) :- f(V0,V1), move_down(V2,V1).
%time,11.028733968734741