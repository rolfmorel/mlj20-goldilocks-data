f(A):-head(A,B),f_1(A,B).
f_1(A,B):-tail(A,C),head(C,B).
%TIME: 0.3971292972564697
