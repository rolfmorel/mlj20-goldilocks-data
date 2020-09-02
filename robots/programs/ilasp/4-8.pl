f(V0,V0) :- move_right(V0,_).
f(V0,V2) :- f(V0,V1), move_up(V1,V2).
%time,10.813899040222168