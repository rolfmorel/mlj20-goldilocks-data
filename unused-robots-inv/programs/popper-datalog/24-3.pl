f(A,B) :- move_up(C,B),f(A,C).
f(A,B) :- move_up(B,A).
%time,12.610212802886963