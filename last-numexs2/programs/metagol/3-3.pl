f(A,B):-f_1(A,B),even(B).
f_1(A,B):-head(A,C),geq(C,B).
%time,0.19700908660888672
