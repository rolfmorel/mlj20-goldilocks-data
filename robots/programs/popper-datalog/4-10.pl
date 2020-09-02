f(A,B) :- move_down(B,C),f(A,C).
f(A,B) :- move_down(B,A).
%time,1.8280549049377441