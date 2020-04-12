f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,25.429320335388184