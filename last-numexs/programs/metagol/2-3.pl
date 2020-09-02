f(A,B):-tail(A,C),f(C,B).
f(A,B):-head(A,C),decrement(C,B).
%time,0.24958205223083496
