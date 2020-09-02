

% learning f/2
% clauses: 1
% clauses: 2
f(A,B):-drop(A,C),f_1(C,B).
f_1(A,B):-drop(A,C),drop(C,B).

% solved,1
% time,0.303236722946167