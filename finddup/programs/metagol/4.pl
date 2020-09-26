f(A,B):-tail(A,C),f(C,B).
f(A,B):-head(A,B),f_1(A,B).
f_1(A,B):-tail(A,C),element(C,B).
%TIME: 3.6238691806793213
