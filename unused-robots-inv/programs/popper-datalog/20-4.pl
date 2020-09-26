f(A,B) :- move_up(A,C),f(C,B).
f(A,B) :- move_down(B,A).
%time,8.38379693031311