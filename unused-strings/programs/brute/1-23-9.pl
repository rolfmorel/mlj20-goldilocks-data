f_0(A,B):-drop(A,C),drop(C,B).
f_1(A,B):-drop(A,C),drop(C,B).
f_2(A,B):-drop(A,C),drop(C,B).
f(X0,X1):-f_0(X0,X2),f_1(X2,X3),f_2(X3,X1).

% solved,1
% time,0.32877397537231445