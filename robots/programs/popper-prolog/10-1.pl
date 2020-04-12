f(A,B) :- move_down(B,C),f(A,C).
f(A,B) :- move_down(A,B).
%time,11.649038791656494