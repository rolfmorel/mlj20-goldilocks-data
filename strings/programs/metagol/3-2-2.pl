

% learning f/2
% clauses: 1
% clauses: 2
f(A,B):-drop(A,C),f(C,B).
f(A,B):-drop(A,B),is_uppercase(B).

% solved,1
% time,0.293942928314209