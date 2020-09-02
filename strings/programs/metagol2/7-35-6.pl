

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
f(A,B):-right(A,C),f_1(C,B).
f_1(A,B):-drop(A,C),f_1(C,B).
f_1(A,B):-right(A,B).

% solved,1
% time,1.6358280181884766