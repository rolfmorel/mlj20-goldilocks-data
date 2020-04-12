f(A,B) :- move_down(B,C),f(A,C).
f(A,B) :- move_up(A,B).
%time,6.958660364151001