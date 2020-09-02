f(A):-div2(A),f_1(A).
f_1(A):-div3(A),f_2(A).
f_2(A):-div5(A),div7(A).
%time,0.21240234375