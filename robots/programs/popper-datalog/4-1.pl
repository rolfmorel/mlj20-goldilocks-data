f(A,B) :- move_down(B,A).
f(A,B) :- move_up(A,C),f(C,B).
%time,0.5062851905822754