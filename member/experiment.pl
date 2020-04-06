:-['../bk'].
:-['../metagol'].

%% P(A):-Q(A).
metarule([P,Q], [P,A], [[Q,A]]).

%% P(A):-Q(A),R(A).
metarule([P,Q], [P,A], [[Q,A]]).

%% P(A):-Q(A,B),R(B).
metarule([P,Q,R], [P,A], [[Q,A,B],[R,B]]).

%% P(A):-Q(A,B),P(B).
metarule([P,Q], [P,A], [[Q,A,B],[P,B]]).

%% P(A):-Q(A,B),R(A,B).
metarule([P,Q,R], [P,A], [[Q,A,B],[R,A,B]]).

%% P(A,B):-Q(A,B)
metarule([P,Q], [P,A,B], [[Q,A,B]]).

%% P(A,B):-Q(A,B),R(A,B).
metarule([P,Q,R], [P,A,B], [[Q,A,B],[R,A,B]]).

%% P(A,B):-Q(A),R(A,B).
metarule([P,Q,R], [P,A,B], [[Q,A],[R,A,B]]).

%% P(A,B):-Q(A,B),R(B).
metarule([P,Q,R], [P,A,B], [[Q,A,B],[R,B]]).

%% P(A,B):-Q(A,C),R(C,B).
metarule([P,Q,R], [P,A,B], [[Q,A,C],[R,C,B]]).

%% P(A,B):-Q(A,C),P(C,B).
metarule([P,Q], [P,A,B], [[Q,A,C],[P,C,B]]).

body_pred(P/A):-
    body_pred(P,A).

body_pred(tail,2).
body_pred(head,2).
body_pred(increment,2).
body_pred(decrement,2).
body_pred(gt,2).
body_pred(empty,1).
body_pred(zero,1).
body_pred(even,1).
body_pred(odd,1).