f_0(A,B):-is_letter(A),drop(A,B).
f_0(A,B):-drop(A,C),f_0(C,B).
f_1(A,B):-drop(A,C),drop(C,B).
f_2(A,B):-drop(A,C),drop(C,B).
f_3(A,B):-drop(A,C),drop(C,B).
f_4(A,B):-at_start(A),drop(A,B).
f_4(A,B):-make_lowercase(A,C),f_4(C,B).
f_5(A,B):-make_uppercase(A,B).
f_5(A,B):-make_lowercase(A,C),f_5(C,B).
f_6(A,B):-at_end(A),drop(A,B).
f_6(A,B):-right(A,C),f_6(C,B).
f(X0,X1):-f_0(X0,X2),f_1(X2,X3),f_2(X3,X4),f_3(X4,X5),f_4(X5,X6),f_5(X6,X7),f_6(X7,X1).

% solved,1
% time,3.339646100997925