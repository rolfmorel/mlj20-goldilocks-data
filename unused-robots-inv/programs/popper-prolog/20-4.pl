f(A,B) :- move_up(A,C),f(C,B).
f(A,B) :- move_down(B,A).
%time,10.264096975326538