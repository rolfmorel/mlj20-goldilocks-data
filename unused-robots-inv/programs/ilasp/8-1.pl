f(V0,V1) :- move_down(V0,V1).
f(V0,V2) :- f(V0,V1), move_up(V1,V2).
%time,7.424859046936035