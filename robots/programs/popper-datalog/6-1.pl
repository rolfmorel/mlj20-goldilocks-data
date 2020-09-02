f(A,B) :- move_down(B,A).
f(A,B) :- move_up(A,C),f(C,B).
%time,1.1337268352508545