f(A,B) :- move_up(A,C),f(C,B).
f(A,B) :- move_down(B,A).
%time,10.716382026672363