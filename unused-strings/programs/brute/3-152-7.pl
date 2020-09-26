f_0(A,B):-drop(A,C),drop(C,B).
f_1(A,B):-drop(A,C),drop(C,B).
f_2(A,B):-drop(A,C),drop(C,B).
f_3(A,B):-drop(A,C),drop(C,B).
f_4(A,B):-drop(A,C),drop(C,B).
f_5(A,B):-drop(A,C),drop(C,B).
f_6(A,B):-drop(A,C),drop(C,B).
f_7(A,B):-drop(A,C),drop(C,B).
f(X0,X1):-f_0(X0,X2),f_1(X2,X3),f_2(X3,X4),f_3(X4,X5),f_4(X5,X6),f_5(X6,X7),f_6(X7,X8),f_7(X8,X1).

% solved,1
% time,3.6965110301971436