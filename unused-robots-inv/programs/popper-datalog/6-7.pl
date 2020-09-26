f(A,B) :- move_down(C,A),f(C,B).
f(A,B) :- move_up(A,B).
%time,1.5068809986114502