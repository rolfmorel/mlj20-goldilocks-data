f(A,B) :- move_down(B,C),f(A,C).
f(A,B) :- move_up(A,B).
%time,12.418670177459717