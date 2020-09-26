

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
f(A,B):-right(A,C),f(C,B).
f(A,B):-make_uppercase(A,C),f(C,B).
f(A,B):-make_lowercase(A,C),make_uppercase(C,B).

% solved,1
% time,0.5246961116790771