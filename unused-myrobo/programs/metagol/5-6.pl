f(A,B):-move_right(A,C),f_1(C,B).
f_1(A,B):-move_right(A,C),move_up(C,B).
%time,0.4513521194458008