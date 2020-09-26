

% learning f/2
% clauses: 1
% clauses: 2
f(A,B):-right(A,C),f(C,B).
f(A,B):-at_end(A),drop(A,B).

% solved,1
% time,0.33007192611694336