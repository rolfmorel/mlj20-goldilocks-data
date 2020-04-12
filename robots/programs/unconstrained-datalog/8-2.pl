f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,24.236802577972412