f_0(A,B):-right(A,B),is_uppercase(A).
f_0(A,B):-drop(A,C),f_0(C,B).
f_1(A,B):-drop(A,B),at_end(A).
f_1(A,B):-right(A,C),f_1(C,B).
f_2(A,B):-drop(A,C),drop(C,B).
f_3(A,B):-drop(A,C),drop(C,B).
f_4(A,B):-drop(A,C),drop(C,B).
f_5(A,B):-drop(A,C),drop(C,B).
f_6(A,B):-at_end(A),drop(A,B).
f_6(A,B):-make_uppercase(A,C),f_6(C,B).
f(X0,X1):-f_0(X0,X2),f_1(X2,X3),f_2(X3,X4),f_3(X4,X5),f_4(X5,X6),f_5(X6,X7),f_6(X7,X1).

% solved,1
% time,1.0438971519470215