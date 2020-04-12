f(A,B) :- move_down(B,A).
f(A,B) :- move_down(C,A),f(C,B).
%time,10.185828447341919