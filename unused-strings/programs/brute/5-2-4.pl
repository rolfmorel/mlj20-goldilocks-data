f_0(A,B):-drop(A,B),is_space(A).
f_0(A,B):-drop(A,C),f_0(C,B).
f_1(A,B):-is_uppercase(A),right(A,B).
f_1(A,B):-drop(A,C),f_1(C,B).
f(X0,X1):-f_0(X0,X2),f_1(X2,X1).

% solved,1
% time,1.1599831581115723