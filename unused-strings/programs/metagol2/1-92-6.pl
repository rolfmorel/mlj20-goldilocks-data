

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
f(A,B):-right(A,C),f_1(C,B).
f_1(A,B):-drop(A,C),f_2(C,B).
f_2(A,B):-drop(A,C),drop(C,B).

% solved,1
% time,0.3163769245147705