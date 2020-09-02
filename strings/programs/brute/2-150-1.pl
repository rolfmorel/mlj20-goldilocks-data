f_0(A,B):-is_letter(A),make_uppercase(A,B).
f_0(A,B):-make_uppercase(A,C),f_0(C,B).
f(X0,X1):-f_0(X0,X1).

% solved,1
% time,0.5429081916809082