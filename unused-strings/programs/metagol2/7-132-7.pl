

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
f(A,B):-right(A,C),f(C,B).
f(A,B):-drop(A,C),f(C,B).
f(A,B):-right(A,B).

% solved,1
% time,0.9928638935089111