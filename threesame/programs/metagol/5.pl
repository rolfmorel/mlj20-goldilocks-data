f(A):-head(A,B),f_1(A,B).
f_1(A,B):-tail(A,C),head(C,B).
%time,0.25154876708984375
