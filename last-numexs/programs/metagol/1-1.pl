f(A,B):-tail(A,C),f(C,B).
f(A,B):-head(A,B),odd(B).
%time,0.2391209602355957
