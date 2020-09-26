f_0(A,B):-is_number(A),right(A,B).
f_0(A,B):-drop(A,C),f_0(C,B).
f(X0,X1):-f_0(X0,X1).

% solved,1
% time,0.34853672981262207