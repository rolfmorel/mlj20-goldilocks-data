

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
f(A,B):-f_1(A,C),f(C,B).
f_1(A,B):-right(A,C),drop(C,B).
f(A,B):-at_end(A),drop(A,B).

% solved,1
% time,2.518577814102173