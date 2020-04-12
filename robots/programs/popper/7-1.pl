f(A,B) :- move_down(B,A).
f(A,B) :- move_up(C,B),f(A,C).
%time,0.8092806339263916