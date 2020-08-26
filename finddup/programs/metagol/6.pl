f(A,B):-head(A,B),f_1(A,B).
f_1(A,B):-tail(A,C),element(C,B).
f(A,B):-tail(A,C),f(C,B).
%time,0.9438309669494629
