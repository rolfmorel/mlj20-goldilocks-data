f(A,B):-head(A,B).
f(A,B):-tail(A,C),f(C,B).
%TIME: 0.3443310260772705
