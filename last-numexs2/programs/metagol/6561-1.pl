f(A,B):-f_1(A),head(A,B).
f_1(A):-tail(A,B),empty(B).
f(A,B):-tail(A,C),f(C,B).
%time,92.29689717292786
