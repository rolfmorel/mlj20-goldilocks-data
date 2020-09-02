

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
f(A,B):-drop(A,C),f(C,B).
f(A,B):-right(A,C),f(C,B).
f(A,B):-drop(A,B).

% solved,1
% time,2.4771459102630615