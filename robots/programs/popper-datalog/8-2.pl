f(A,B) :- move_up(A,B).
f(A,B) :- move_up(C,B),f(A,C).
%time,2.659976005554199