f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,50.67322111129761