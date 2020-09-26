

% learning f/2
% clauses: 1
% clauses: 2
f(A,B):-right(A,B).
f(A,B):-drop(A,C),f(C,B).

% solved,1
% time,0.2819511890411377