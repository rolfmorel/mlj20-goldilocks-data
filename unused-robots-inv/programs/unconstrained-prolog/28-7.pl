f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,51.50042176246643