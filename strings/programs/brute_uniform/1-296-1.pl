f_0(A,B):-drop(A,C),drop(C,B).
f(X0,X1):-f_0(X0,X1).

% solved,1
% time,0.4075760841369629