f_0(A,B):-right(A,C),drop(C,B).
f_1(A,B):-at_start(A),make_uppercase(A,B).
f_1(A,B):-drop(A,C),f_1(C,B).
f(X0,X1):-f_0(X0,X2),f_1(X2,X1).

% solved,1
% time,2.1668190956115723