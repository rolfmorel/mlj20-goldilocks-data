

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
% clauses: 4
f(A,B):-f_1(A,B),at_end(B).
f_1(A,B):-f_2(A,C),right(C,B).
f_2(A,B):-drop(A,C),f_2(C,B).
f_2(A,B):-right(A,C),right(C,B).

% solved,1
% time,6.632514953613281