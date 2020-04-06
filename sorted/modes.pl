max_vars(5).
max_body(5).
max_clauses(2).

%% sorted(A):-empty(A).
%% sorted(A):-head(A,B),tail(A,C),head(C,D),gt(D,B),sorted(C).

:-
    recursive(0).

:-
    not clause(1).
:-
    not recursive.

modeh(f,1).
type(f,0,list).
direction(f,0,in).
modeb(f,1).

functional(head,2).
functional(tail,2).
functional(gt,2).

irreflexive(head,2).
irreflexive(tail,2).
irreflexive(gt,2).

%% modeb(cons,3).
%% type(cons,0,element).
%% type(cons,1,list).
%% type(cons,2,list).
%% direction(cons,0,in).
%% direction(cons,1,in).
%% direction(cons,2,out).

%% modeb(sum,3).
%% type(sum,0,int).
%% type(sum,1,int).
%% type(sum,2,int).
%% direction(sum,0,in).
%% direction(sum,1,in).
%% direction(sum,2,out).

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

%% modeb(increment,2).
type(increment,0,int).
type(increment,1,int).
direction(increment,0,in).
direction(increment,1,out).

%% modeb(decrement,2).
type(decrement,0,int).
type(decrement,1,int).
direction(decrement,0,in).
direction(decrement,1,out).

modeb(gt,2).
type(gt,0,int).
type(gt,1,int).
direction(gt,0,in).
direction(gt,1,in).

modeb(empty,1).
type(empty,0,list).
direction(empty,0,in).

%% modeb(zero,1).
type(zero,0,element).
direction(zero,0,in).

%% modeb(even,1).
type(even,0,element).
direction(even,0,in).

%% modeb(odd,1).
type(odd,0,element).
direction(odd,0,in).
