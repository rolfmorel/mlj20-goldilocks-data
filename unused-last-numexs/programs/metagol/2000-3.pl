f(A,B):-f_1(A),head(A,B).
f_1(A):-tail(A,B),empty(B).
f(A,B):-tail(A,C),f(C,B).
%time,36.74558901786804