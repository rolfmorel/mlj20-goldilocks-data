max_vars(5).
max_clauses(2).


%% f(A,B):-
    %% empty(A),
    %% zero2(B).
%% f(A,B):-tail(A,C),f(C,D),succ(D,B).

modeh(f,2).
type(f,0,list).
type(f,1,int).
direction(f,0,in).
direction(f,1,out).
modeb(f,2).

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

modeb(increment,2).
type(increment,0,int).
type(increment,1,int).
direction(increment,0,in).
direction(increment,1,out).

modeb(decrement,2).
type(decrement,0,int).
type(decrement,1,int).
direction(decrement,0,in).
direction(decrement,1,out).

modeb(geq,2).
type(geq,0,int).
type(geq,1,int).
direction(geq,0,in).
direction(geq,1,in).

modeb(empty,1).
type(empty,0,list).
direction(empty,0,in).

modeb(zero,1).
type(zero,0,int).
direction(zero,0,out).

modeb(one,1).
type(one,0,int).
direction(one,0,in).

modeb(even,1).
type(even,0,element).
direction(even,0,in).

modeb(odd,1).
type(odd,0,element).
direction(odd,0,in).
