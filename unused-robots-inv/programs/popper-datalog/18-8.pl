f(A,B) :- move_down(B,C),f(A,C).
f(A,B) :- move_up(A,B).
%time,13.775795936584473