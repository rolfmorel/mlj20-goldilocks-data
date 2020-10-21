f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,2.1930041313171387