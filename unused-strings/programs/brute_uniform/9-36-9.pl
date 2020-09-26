f_0(A,B):-right(A,B).
f_1(A,B):-is_uppercase(A),right(A,B).
f_1(A,B):-drop(A,C),f_1(C,B).
f_2(A,B):-at_end(A),drop(A,B).
f_2(A,B):-drop(A,C),f_2(C,B).
f(X0,X1):-f_0(X0,X2),f_1(X2,X3),f_2(X3,X1).

% solved,1
% time,2.4929349422454834