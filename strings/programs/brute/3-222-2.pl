f_0(A,B):-is_letter(A),drop(A,B).
f_0(A,B):-drop(A,C),f_0(C,B).
f_1(A,B):-drop(A,C),drop(C,B).
f_2(A,B):-drop(A,C),drop(C,B).
f_3(A,B):-drop(A,C),drop(C,B).
f_4(A,B):-at_start(A),make_uppercase(A,B).
f_4(A,B):-drop(A,C),f_4(C,B).
f_5(A,B):-at_end(A),drop(A,B).
f_5(A,B):-right(A,C),f_5(C,B).
f_6(A,B):-drop(A,C),drop(C,B).
f_7(A,B):-drop(A,C),drop(C,B).
f_8(A,B):-drop(A,C),drop(C,B).
f_9(A,B):-drop(A,C),drop(C,B).
f_10(A,B):-at_end(A),drop(A,B).
f_10(A,B):-make_uppercase(A,C),f_10(C,B).
f(X0,X1):-f_0(X0,X2),f_1(X2,X3),f_2(X3,X4),f_3(X4,X5),f_4(X5,X6),f_5(X6,X7),f_6(X7,X8),f_7(X8,X9),f_8(X9,X10),f_9(X10,X11),f_10(X11,X1).

% solved,1
% time,1.8171498775482178