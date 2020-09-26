

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
% clauses: 4
f(A,B):-make_uppercase(A,C),f(C,B).
f(A,B):-f_1(A,C),f(C,B).
f_1(A,B):-make_lowercase(A,C),right(C,B).
f(A,B):-at_end(A),make_lowercase(A,B).

% solved,1
% time,11.84627366065979