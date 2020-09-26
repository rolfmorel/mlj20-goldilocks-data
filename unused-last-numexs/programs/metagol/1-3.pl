f(A,B):-tail(A,C),f(C,B).
f(A,B):-head(A,B),even(B).
%time,0.2424771785736084
