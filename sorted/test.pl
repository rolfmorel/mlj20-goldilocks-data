:-['data/train/1'].
:-['../bk'].
:-['../metagol'].

%% f(A):-
%%     tail(A,B),
%%     empty(B).
%% f(A):-
%%     head(A,B),
%%     tail(A,C),
%%     head(C,D),
%%     gt(D,B),
%%     f(C).

f(A) :- tail(A,B),empty(B).
f(A) :- tail(A,B),f(B),head(B,D),head(A,C),geq(D,C).


%% B=8
%% D=20

a:-
    f([8, 20, 43, 69]).


%% pos(f([8, 20, 43, 69])).

%% f(A) :- tail(A,C),head(A,3),f(C),head(C,14),gt(D).
