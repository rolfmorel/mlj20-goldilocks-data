

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
% clauses: 4
f(A,B):-f_1(A,C),f_1(C,B).
f_1(A,B):-f_2(A,B),at_end(B).
f_2(A,B):-right(A,C),f_2(C,B).
f_2(A,B):-drop(A,C),drop(C,B).

% solved,1
% time,16.245893955230713