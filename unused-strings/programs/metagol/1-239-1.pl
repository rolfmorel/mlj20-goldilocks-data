

% learning f/2
% clauses: 1
% clauses: 2
f(A,B):-right(A,C),f(C,B).
f(A,B):-drop(A,B),is_number(B).

% solved,1
% time,0.3474550247192383