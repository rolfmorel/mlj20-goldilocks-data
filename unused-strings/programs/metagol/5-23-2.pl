

% learning f/2
% clauses: 1
% clauses: 2
f(A,B):-drop(A,C),f(C,B).
f(A,B):-right(A,B),at_end(B).

% solved,1
% time,0.3242461681365967