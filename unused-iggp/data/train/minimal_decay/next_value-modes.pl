max_vars(4).
max_body(4).
max_clauses(2).

modeh(next_value,2).
type(next_value,0,episode).
type(next_value,1,int).

direction(P,Pos,out):-
    type(P,Pos,_).
direction(P,Pos,out):-
    type(P,Pos,_).

%% succ :: int -> int -> bool.
modeb(my_succ,3).
type(my_succ,0,episode).
type(my_succ,1,int).
type(my_succ,2,int).

modeb(does,3).
type(does,0,episode).
type(does,1,agent).
type(does,2,action).

%% value :: int -> prop.
modeb(my_true_value,2).
type(my_true_value,0,episode).
type(my_true_value,1,int).

%% 0, 1, 2, 3, 4, 5 :: int.
%% modeb(c_0,1).
%% type(c_0,0,int).
%% modeb(c_1,1).
%% type(c_1,0,int).
%% modeb(c_2,1).
%% type(c_2,0,int).
%% modeb(c_3,1).
%% type(c_3,0,int).
%% modeb(c_4,1).
%% type(c_4,0,int).
modeb(c_5,1).
type(c_5,0,int).

%% player :: agent.
modeb(c_player,1).
type(c_player,0,agent).

%% noop, pressButton :: action.
modeb(c_noop,1).
type(c_noop,0,action).
modeb(c_pressButton,1).
type(c_pressButton,0,action).

%% MINIMAL DECAY NEXT
%% next_value(A) :-
%%     c_5(A),
%%     c_player(B),
%%     does(B,C),
%%     c_pressButton(C).
%% next_value(A) :-
%%     true_value(B),
%%     succ(B,A),
%%     does(C,D),
%%     c_player(C),
%%     c_noop(D).




%% legal, input, does :: agent -> action -> bool.
%% modeb(legal,2).
%% type(legal,0,agent).
%% type(legal,1,action).

%% modeb(input,2).
%% type(input,0,agent).
%% type(input,1,action).

%% true, next :: prop -> bool.
%% goal :: agent -> int -> bool.
%% terminal :: bool.



%% MINIMAL DECAY LEGAL
%% legal(V0, V1) :-
%%     agent(V0),
%%     action(V1).

%% MINIMAL DECAY NEXT
%% next_value(A) :-
%%     c_5(A),
%%     c_player(B),
%%     does(B,C),
%%     c_pressButton(C).
%% next_value(A) :-
%%     true_value(B),
%%     succ(B,A),
%%     does(C,D),
%%     c_player(C),
%%     c_noop(D).


