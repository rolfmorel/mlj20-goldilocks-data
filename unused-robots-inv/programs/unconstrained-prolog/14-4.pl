f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,53.910959243774414