

% learning f/2
% clauses: 1
% clauses: 2
f(A,B):-f_1(A,C),f_1(C,B).
f_1(A,B):-right(A,C),drop(C,B).

% solved,1
% time,0.2694559097290039