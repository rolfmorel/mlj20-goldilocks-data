max_vars(5).
max_body(5).
max_clauses(2).

%% sorted(A):-
%%     empty(A).
%% sorted(A):-
%%     head(A,B),
%%     tail(A,C),
%%     head(C,D),
%%     gt(D,B),
%%     sorted(C).

%% :-
%%     recursive(0).

modeh(f,1).
type(f,0,list).
direction(f,0,in).
modeb(f,1).

%% functional(head,2).
%% functional(tail,2).
%% functional(increment,2).
%% functional(decrement,2).
%% functional(geq,2).

%% irreflexive(head,2).
%% irreflexive(tail,2).
%% irreflexive(increment,2).
%% irreflexive(decrement,2).
%% irreflexive(geq,2).

modeb(head,2).
type(head,0,list).
type(head,1,element).
direction(head,0,in).
direction(head,1,out).

modeb(tail,2).
type(tail,0,list).
type(tail,1,list).
direction(tail,0,in).
direction(tail,1,out).

%% modeb(element,2).
%% type(element,0,list).
%% type(element,1,element).
%% direction(element,0,in).
%% direction(element,1,out).

%% modeb(length,2).
%% type(element,0,list).
%% type(element,1,element).
%% direction(element,0,in).
%% direction(element,1,out).


%% modeb(increment,2).
%% type(increment,0,int).
%% type(increment,1,int).
%% direction(increment,0,in).
%% direction(increment,1,out).

modeb(decrement,2).
type(decrement,0,int).
type(decrement,1,int).
direction(decrement,0,in).
direction(decrement,1,out).

modeb(geq,2).
type(geq,0,element).
type(geq,1,element).
direction(geq,0,in).
direction(geq,1,in).

modeb(empty,1).
type(empty,0,list).
direction(empty,0,in).

modeb(zero,1).
type(zero,0,int).
direction(zero,0,in).

modeb(one,1).
type(one,0,int).
direction(one,0,in).

modeb(even,1).
type(even,0,element).
direction(even,0,in).

modeb(odd,1).
type(odd,0,element).
direction(odd,0,in).
