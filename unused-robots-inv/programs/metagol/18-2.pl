f(A,B):-move_down(B,A).
f(A,B):-move_up(A,C),f(C,B).
%time,0.40717601776123047