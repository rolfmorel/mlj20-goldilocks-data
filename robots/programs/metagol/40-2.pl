f(A,B):-move_up(A,B).
f(A,B):-move_up(A,C),f(C,B).
%time,0.6659748554229736