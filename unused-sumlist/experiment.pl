:-['../../bk'].
:-['../../metagol'].

%% size = 9
%% LAST
%% f(A,B):-
%%     head(A,B)
%%     tail(A,C),
%%     empty(C).
%% f(A,B):-
%%     tail(A,C),
%%     f(C,B).

%% f(A,B):-f1(A),head(A,B).
%% f1(A):-tail(A,B),empty(B).
%% f(A,B):-tail(A,C),f(C,B).

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
%% body_pred(my_last,2).
body_pred(my_length,2).
%% body_pred(my_succ,2).
%% body_pred(sum,3).
%% body_pred(cons,3).
body_pred(empty,1).
body_pred(zero,1).
body_pred(even,1).