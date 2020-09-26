f(A,B):-move_down(B,A).
f(A,B):-move_up(A,C),f(C,B).
%time,0.38895201683044434