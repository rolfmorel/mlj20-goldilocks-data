f(A,B):-move_up(A,B).
f(A,B):-move_up(A,C),f(C,B).
%time,0.3616781234741211