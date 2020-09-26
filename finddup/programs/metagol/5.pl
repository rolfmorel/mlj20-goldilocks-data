f(A,B):-head(A,B),f_1(A,B).
f_1(A,B):-tail(A,C),element(C,B).
f(A,B):-tail(A,C),f(C,B).
%TIME: 1.2660977840423584
