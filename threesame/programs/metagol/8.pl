f(A):-tail(A,B),f_1(B).
f_1(A):-head(A,B),f_2(A,B).
f_2(A,B):-tail(A,C),head(C,B).
%time,0.4367091655731201
