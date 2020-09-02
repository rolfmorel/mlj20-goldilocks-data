

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
f(A,B):-f_1(A,B),at_start(B).
f_1(A,B):-drop(A,C),f_1(C,B).
f_1(A,B):-right(A,C),drop(C,B).

% solved,1
% time,0.6110310554504395