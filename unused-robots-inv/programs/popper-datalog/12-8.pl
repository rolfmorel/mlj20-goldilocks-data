f(A,B) :- move_up(A,C),f(C,B).
f(A,B) :- move_down(B,A).
%time,5.674432992935181