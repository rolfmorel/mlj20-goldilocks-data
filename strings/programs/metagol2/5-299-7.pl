

% learning f/2
% clauses: 1
% clauses: 2
f(A,B):-drop(A,C),drop(C,B).
f(A,B):-drop(A,C),f(C,B).

% solved,1
% time,0.3105640411376953