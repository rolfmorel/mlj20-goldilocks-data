

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
f(A,B):-f_1(A,C),drop(C,B).
f_1(A,B):-f_2(A,C),f_2(C,B).
f_2(A,B):-right(A,C),right(C,B).

% solved,1
% time,0.7584187984466553