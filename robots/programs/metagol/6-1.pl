f(A,B):-move_down(A,C),f_1(C,B).
f_1(A,B):-f_2(A,C),f_2(C,B).
f_2(A,B):-move_right(A,C),move_right(C,B).
%time,0.17868590354919434