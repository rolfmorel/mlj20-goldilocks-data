f(V1,V1) :- move_left(_,V1).
f(V2,V1) :- f(V0,V1), move_down(V0,V2).
%time,11.397347927093506