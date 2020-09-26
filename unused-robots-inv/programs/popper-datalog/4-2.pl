f(A,B) :- move_down(C,A),f(C,B).
f(A,B) :- move_up(A,B).
%time,1.4899609088897705