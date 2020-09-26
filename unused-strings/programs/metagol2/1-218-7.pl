

% learning f/2
% clauses: 1
% clauses: 2
f(A,B):-drop(A,C),f(C,B).
f(A,B):-make_uppercase(A,B).

% solved,1
% time,0.29967379570007324