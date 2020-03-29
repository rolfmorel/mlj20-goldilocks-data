f(A,B) :- empty(A),zero2(B).
f(A,B) :- tail(A,C),f(C,D),succ(D,B).
% solved,1
% time,108.94120378100007