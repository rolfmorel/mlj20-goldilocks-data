f(A,B) :- move_down(B,C),f(A,C).
f(A,B) :- move_up(A,B).
%time,14.525386095046997