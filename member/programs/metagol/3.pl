f(A,B):-head(A,B).
f(A,B):-tail(A,C),f(C,B).
%TIME: 0.3449273109436035
