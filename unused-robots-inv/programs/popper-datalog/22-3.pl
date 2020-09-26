f(A,B) :- move_down(B,C),f(A,C).
f(A,B) :- move_up(A,B).
%time,16.825807809829712