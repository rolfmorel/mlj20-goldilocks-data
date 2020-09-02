

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
% clauses: 4
f(A,B):-f_1(A,C),f_1(C,B).
f_1(A,B):-right(A,C),f_2(C,B).
f_2(A,B):-right(A,C),f_3(C,B).
f_3(A,B):-drop(A,C),right(C,B).

% solved,1
% time,23.15622591972351