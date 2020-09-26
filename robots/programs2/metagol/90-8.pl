f(A,B):-move_up(A,C),move_up(C,B).
f(A,B):-move_up(A,C),f(C,B).
%time,0.6598989963531494