f_0(A,B):-make_uppercase(A,B).
f_1(A,B):-is_space(A),right(A,B).
f_1(A,B):-right(A,C),f_1(C,B).
f_2(A,B):-is_letter(A),make_uppercase(A,B).
f_2(A,B):-make_uppercase(A,C),f_2(C,B).
f(X0,X1):-f_0(X0,X2),f_1(X2,X3),f_2(X3,X1).

% solved,1
% time,5.799645185470581