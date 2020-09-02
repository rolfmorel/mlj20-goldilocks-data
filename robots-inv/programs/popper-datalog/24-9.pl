f(A,B) :- move_up(A,B).
f(A,B) :- move_up(C,B),f(A,C).
%time,11.60302996635437