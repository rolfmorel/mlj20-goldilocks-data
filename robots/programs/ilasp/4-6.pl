f(V1,V0) :- move_down(V0,V1).
f(V2,V1) :- f(V0,V1), f(V2,V0).
%time,62.445862770080566