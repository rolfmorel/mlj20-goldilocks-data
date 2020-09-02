f(A,B) :- move_up(C,B),f(A,C).
f(A,B) :- move_up(B,A).
%time,10.221359014511108