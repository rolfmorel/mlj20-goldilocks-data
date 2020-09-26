f(A,B):-tail(A,C),f(C,B).
f(A,B):-head(A,B),even(B).
%time,0.24293899536132812
