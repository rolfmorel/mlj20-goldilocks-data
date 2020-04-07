%:- use_module(library(clpfd)).
:-['bk'].
:-['../metagol'].


%% P(A,B):-Q(A,B)
metarule([P,Q], [P,A,B], [[Q,A,B]]).

%% P(A,B):-Q(A,C),R(C,B).
metarule([P,Q,R], [P,A,B], [[Q,A,C],[R,C,B]]).

body_pred(move_right/2).
body_pred(move_left/2).
body_pred(move_up/2).
body_pred(move_down/2).
%body_pred(pickup/2).
%body_pred(drop/2).

run2:-
	write("anything").

run:-
    findall(A, pos(A), Pos),
    findall(A, neg(A), Neg),
    learn(Pos,Neg).
