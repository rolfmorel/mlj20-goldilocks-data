f_0(A,B):-at_start(A),make_uppercase(A,B).
f_0(A,B):-drop(A,C),f_0(C,B).
f_1(A,B):-is_number(A),drop(A,B).
f_1(A,B):-drop(A,C),f_1(C,B).
f_2(A,B):-is_space(A),drop(A,B).
f_2(A,B):-drop(A,C),f_2(C,B).
f(X0,X1):-f_0(X0,X2),f_1(X2,X3),f_2(X3,X1).

% solved,1
% time,4.539912939071655