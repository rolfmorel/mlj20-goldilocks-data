f(A,B):-f_1(A,C),f_1(C,B).
f_1(A,B):-move_right(A,C),move_up(C,B).
%time,0.4949166774749756