f(A,B) :- move_up(A,B).
f(A,B) :- move_up(C,B),f(A,C).
%time,3.0231547355651855