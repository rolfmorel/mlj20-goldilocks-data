f_0(A,B):-is_number(A),drop(A,B).
f_0(A,B):-drop(A,C),f_0(C,B).
f(X0,X1):-f_0(X0,X1).

% solved,1
% time,0.4610786437988281