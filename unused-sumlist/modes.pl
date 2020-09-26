max_vars(5).
max_body(5).
max_clauses(2).

%% sumlist(A,B):-
%%     tail(A,C),
%%     empty(C),
%%     head(A,B).
%% sumlist(A,B):-
%%     tail(A,C),
%%     f(C,D),
%%     head(A,E),
%%     sum(D,E,B).

%% functional(tail,2).
%% functional(head,2).
%% functional(increment,2).
%% functional(decrement,2).
%% functional(sum,3).

%% irreflexive(tail,2).
%% irreflexive(head,2).
%% irreflexive(increment,2).
%% irreflexive(decrement,2).

modeh(f,2).
type(f,0,list).
type(f,1,int).
direction(f,0,in).
direction(f,1,out).
modeb(f,2).

modeb(head,2).
type(head,0,list).
type(head,1,int).
direction(head,0,in).
direction(head,1,out).

modeb(tail,2).
type(tail,0,list).
type(tail,1,list).
direction(tail,0,in).
direction(tail,1,out).

modeb(sum,3).
type(sum,0,int).
type(sum,1,int).
type(sum,2,int).
direction(sum,0,in).
direction(sum,1,in).
direction(sum,2,out).

%% modeb(cons,3).
%% type(cons,0,element).
%% type(cons,1,list).
%% type(cons,2,list).
%% direction(cons,0,in).
%% direction(cons,1,in).
%% direction(cons,2,out).

%% modeb(decrement,2).
type(decrement,0,int).
type(decrement,1,int).
direction(decrement,0,in).
direction(decrement,1,out).

%% modeb(increment,2).
type(increment,0,int).
type(increment,1,int).
direction(increment,0,in).
direction(increment,1,out).

%% modeb(gt,2).
%% type(gt,0,int).
%% type(gt,1,int).
%% direction(gt,0,in).
%% direction(gt,1,out).

modeb(empty,1).
type(empty,0,list).
direction(empty,0,in).

%% modeb(zero,1).
type(zero,0,int).
direction(zero,0,in).

%% modeb(even,1).
type(even,0,int).
direction(even,0,in).

%% modeb(one,1).
type(one,0,int).
direction(one,0,in).