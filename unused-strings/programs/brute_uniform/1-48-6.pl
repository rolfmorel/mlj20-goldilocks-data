f_0(A,B):-right(A,B).
f_1(A,B):-right(A,C),make_uppercase(C,B).
f_2(A,B):-at_end(A),make_uppercase(A,B).
f_2(A,B):-right(A,C),f_2(C,B).
f(X0,X1):-f_0(X0,X2),f_1(X2,X3),f_2(X3,X1).

% solved,1
% time,0.5620388984680176