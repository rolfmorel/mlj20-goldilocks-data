f(A,B):-tail(A,C),f(C,B).
f(A,B):-f_1(A),head(A,B).
f_1(A):-tail(A,B),empty(B).
%time,0.472398042678833
