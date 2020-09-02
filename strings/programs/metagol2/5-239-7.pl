

% learning f/2
% clauses: 1
% clauses: 2
f(A,B):-right(A,C),f(C,B).
f(A,B):-drop(A,B).

% solved,1
% time,0.32462191581726074