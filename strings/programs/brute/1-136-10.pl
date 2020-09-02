f_0(A,B):-drop(A,C),drop(C,B).
f_1(A,B):-drop(A,C),drop(C,B).
f_2(A,B):-drop(A,C),drop(C,B).
f_3(A,B):-drop(A,C),drop(C,B).
f_4(A,B):-at_start(A),drop(A,B).
f_4(A,B):-make_lowercase(A,C),f_4(C,B).
f(X0,X1):-f_0(X0,X2),f_1(X2,X3),f_2(X3,X4),f_3(X4,X5),f_4(X5,X1).

% solved,1
% time,0.855942964553833