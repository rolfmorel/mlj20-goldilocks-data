

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
% clauses: 4
f(A,B):-right(A,C),f(C,B).
f(A,B):-at_end(A),f_1(A,B).
f_1(A,B):-drop(A,C),f_1(C,B).
f_1(A,B):-is_letter(A),drop(A,B).

% solved,1
% time,4.1722798347473145