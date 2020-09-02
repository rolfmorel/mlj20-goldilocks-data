f(A,B):-head(A,C),f_1(C,B).
f_1(A,B):-decrement(A,C),geq(C,B).
%time,0.2026662826538086
