f_0(A,B):-right(A,B).
f_1(A,B):-right(A,C),drop(C,B).
f_2(A,B):-right(A,C),right(C,B).
f_3(A,B):-right(A,C),drop(C,B).
f(X0,X1):-f_0(X0,X2),f_1(X2,X3),f_2(X3,X4),f_3(X4,X1).

% solved,1
% time,6.78275203704834