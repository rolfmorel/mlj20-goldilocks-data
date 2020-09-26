f(A):-div2(A),f_1(A).
f_1(A):-div3(A),f_2(A).
f_2(A):-div5(A),f_3(A).
f_3(A):-div7(A),f_4(A).
f_4(A):-div11(A),div13(A).
%time,40.08476495742798