

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
f(A,B):-right(A,C),f(C,B).
f(A,B):-drop(A,C),f(C,B).
f(A,B):-make_lowercase(A,C),make_uppercase(C,B).

% solved,1
% time,28.721909046173096