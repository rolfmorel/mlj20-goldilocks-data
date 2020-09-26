

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
f(A,B):-f_1(A,C),f(C,B).
f_1(A,B):-right(A,C),drop(C,B).
f(A,B):-f_1(A,B),at_end(B).

% solved,1
% time,1.073249101638794