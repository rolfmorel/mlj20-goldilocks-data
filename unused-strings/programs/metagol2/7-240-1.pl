

% learning f/2
% clauses: 1
% clauses: 2
f(A,B):-drop(A,C),f(C,B).
f(A,B):-right(A,B).

% solved,1
% time,7.627938985824585