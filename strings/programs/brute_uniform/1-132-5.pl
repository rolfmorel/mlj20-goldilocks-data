f_0(A,B):-right(A,C),right(C,B).
f_1(A,B):-right(A,C),drop(C,B).
f(X0,X1):-f_0(X0,X2),f_1(X2,X1).

% solved,1
% time,0.45911598205566406