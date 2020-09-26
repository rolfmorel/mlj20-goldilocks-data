f(A,B) :- move_up(C,B),f(A,C).
f(A,B) :- move_up(B,A).
%time,11.605435132980347