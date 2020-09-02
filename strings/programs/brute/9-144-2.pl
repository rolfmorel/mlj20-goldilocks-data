f_0(A,B):-is_space(A),drop(A,B).
f_0(A,B):-drop(A,C),f_0(C,B).
f_1(A,B):-at_end(A),drop(A,B).
f_1(A,B):-right(A,C),f_1(C,B).
f_2(A,B):-is_space(A),drop(A,B).
f_2(A,B):-drop(A,C),f_2(C,B).
f(X0,X1):-f_0(X0,X2),f_1(X2,X3),f_2(X3,X1).

% solved,1
% time,5.332530975341797