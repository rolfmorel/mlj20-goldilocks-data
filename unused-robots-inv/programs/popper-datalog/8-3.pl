f(A,B) :- move_down(C,A),f(C,B).
f(A,B) :- move_up(A,B).
%time,1.630737066268921