f_0(A,B):-drop(A,B).
f_1(A,B):-right(A,C),right(C,B).
f_2(A,B):-right(A,C),drop(C,B).
f_3(A,B):-right(A,C),right(C,B).
f_4(A,B):-right(A,C),drop(C,B).
f_5(A,B):-right(A,C),right(C,B).
f_6(A,B):-right(A,C),drop(C,B).
f_7(A,B):-right(A,C),right(C,B).
f_8(A,B):-right(A,C),drop(C,B).
f_9(A,B):-right(A,C),right(C,B).
f_10(A,B):-right(A,C),drop(C,B).
f_11(A,B):-right(A,C),right(C,B).
f_12(A,B):-right(A,C),drop(C,B).
f(X0,X1):-f_0(X0,X2),f_1(X2,X3),f_2(X3,X4),f_3(X4,X5),f_4(X5,X6),f_5(X6,X7),f_6(X7,X8),f_7(X8,X9),f_8(X9,X10),f_9(X10,X11),f_10(X11,X12),f_11(X12,X13),f_12(X13,X1).

% solved,1
% time,27.09116291999817