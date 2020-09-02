f(A,B) :- move_up(C,B),f(A,C).
f(A,B) :- move_up(B,A).
%time,5.8814990520477295