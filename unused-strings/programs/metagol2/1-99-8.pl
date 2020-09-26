

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
f(A,B):-f_1(A,C),drop(C,B).
f_1(A,B):-drop(A,C),f_1(C,B).
f_1(A,B):-right(A,C),right(C,B).

% solved,1
% time,1.0342519283294678