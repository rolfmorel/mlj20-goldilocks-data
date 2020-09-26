f(A,B):-tail(A,C),f(C,B).
f(A,B):-f_1(A),head(A,B).
f_1(A):-tail(A,B),empty(B).
%time,5.3389551639556885
