

% learning f/2
% clauses: 1
% clauses: 2
f(A,B):-drop(A,C),f(C,B).
f(A,B):-is_number(A),drop(A,B).

% solved,1
% time,0.25089597702026367