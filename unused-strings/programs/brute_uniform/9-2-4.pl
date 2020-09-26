f_0(A,B):-at_start(A),drop(A,B).
f_0(A,B):-make_lowercase(A,C),f_0(C,B).
f_1(A,B):-is_uppercase(A),right(A,B).
f_1(A,B):-drop(A,C),f_1(C,B).
f(X0,X1):-f_0(X0,X2),f_1(X2,X1).

% solved,1
% time,0.46649694442749023