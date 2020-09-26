f_0(A,B):-right(A,C),make_lowercase(C,B).
f_1(A,B):-is_letter(A),make_lowercase(A,B).
f_1(A,B):-right(A,C),f_1(C,B).
f(X0,X1):-f_0(X0,X2),f_1(X2,X1).

% solved,1
% time,0.6573619842529297