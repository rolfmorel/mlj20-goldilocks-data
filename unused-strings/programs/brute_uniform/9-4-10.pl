f_0(A,B):-at_start(A),make_uppercase(A,B).
f_0(A,B):-right(A,C),f_0(C,B).
f(X0,X1):-f_0(X0,X1).

% solved,1
% time,0.3225071430206299