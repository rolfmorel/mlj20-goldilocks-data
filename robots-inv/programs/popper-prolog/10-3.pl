f(A,B) :- move_up(A,C),f(C,B).
f(A,B) :- move_down(B,A).
%time,10.788825750350952