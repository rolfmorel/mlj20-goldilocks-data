f(A,B):-tail(A,C),f(C,B).
f(A,B):-head(A,B),f_1(A,B).
f_1(A,B):-tail(A,C),element(C,B).
%time,1.0841128826141357
