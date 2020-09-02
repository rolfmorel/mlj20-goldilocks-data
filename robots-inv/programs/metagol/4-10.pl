f(A,B):-move_down(B,A).
f(A,B):-move_up(A,C),move_up(C,B).
%time,0.42269206047058105