

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
f(A,B):-f_1(A,C),f_1(C,B).
f_1(A,B):-drop(A,C),f_1(C,B).
f_1(A,B):-is_space(A),drop(A,B).

% solved,1
% time,37.56699228286743