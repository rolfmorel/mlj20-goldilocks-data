f(A,B) :- move_down(B,A).
f(A,B) :- move_down(C,A),f(C,B).
%time,13.309165000915527