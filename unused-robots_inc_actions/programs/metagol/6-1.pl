f(A,B):-f_1(A,C),f_2(C,B).
f_1(A,B):-f_2(A,C),f_2(C,B).
f_2(A,B):-move_right(A,C),move_up(C,B).
%time,2.487140655517578