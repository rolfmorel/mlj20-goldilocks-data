f(A,B) :- move_up(A,B).
f(A,B) :- move_up(C,B),f(A,C).
%time,1.8947434425354004