f(A):-f_1(A,B),f(B).
f_1(A,B):-f_2(A),tail(A,B).
f_2(A):-head(A,B),even(B).
f(A):-empty(A).
%time,9.67432689666748
