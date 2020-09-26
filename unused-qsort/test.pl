%% :-['data/train/1'].
:-['../bk'].
:-['../metagol'].

f(A) :- tail(A,B),empty(B).
f(A) :- tail(A,C),head(A,B),f(C),head(C,D),gt(D,B).

%% f(A) :- tail(A,C),head(A,3),f(C),head(C,14),gt(D).

a:-
    f([3, 14, 17, 21, 27, 44, 51, 57, 67, 73, 86, 93]).