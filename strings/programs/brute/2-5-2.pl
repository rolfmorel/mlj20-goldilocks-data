f_0(A,B):-at_end(A),drop(A,B).
f_0(A,B):-right(A,C),f_0(C,B).
f(X0,X1):-f_0(X0,X1).

% solved,1
% time,0.42420077323913574