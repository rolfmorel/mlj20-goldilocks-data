

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
f(A,B):-f_1(A,C),f_1(C,B).
f_1(A,B):-right(A,C),drop(C,B).
f(A,B):-f_1(A,C),f(C,B).

% solved,1
% time,0.37088489532470703