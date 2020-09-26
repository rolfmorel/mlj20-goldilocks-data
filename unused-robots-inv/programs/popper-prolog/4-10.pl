f(A,B) :- move_down(B,C),f(A,C).
f(A,B) :- move_down(B,A).
%time,6.430706977844238