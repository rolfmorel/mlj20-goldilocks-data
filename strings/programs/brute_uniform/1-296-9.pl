f_0(A,B):-drop(A,C),drop(C,B).
f(X0,X1):-f_0(X0,X1).

% solved,1
% time,0.34923219680786133