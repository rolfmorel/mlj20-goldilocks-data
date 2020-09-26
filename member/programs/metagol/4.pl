f(A,B):-head(A,B).
f(A,B):-tail(A,C),f(C,B).
%TIME: 0.34402990341186523
