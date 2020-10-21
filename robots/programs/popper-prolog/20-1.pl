f(A,B) :- move_left(A,C),move_right(C,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,19.68174409866333