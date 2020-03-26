max_vars(4).
max_body(3).
max_clauses(2).

%% len(A,B):-
%%     empty(A),
%%     zero(B).
%% len(A,B):-
%%     tail(A,C),
%%     f(C,D),
%%     succ(D,B).

%% NEED TO EVENTUALLY ADD THIS CONSTRAINT TO THE MAIN ALAN ENCODING
%% PREVENT RECURSION IN THE FIRST CLAUSE

:-
    modeh(P,A),
    body_literal(0,_,P,A).

%% PREVENT f(A,B):-..., f(A,_), ...
:-
    modeh(P,A),
    body_literal(Clause,Literal,P,A),
    var(Clause,Literal,_,0).

modeh(f,2).
type(f,0,list).
type(f,1,int).
direction(f,0,in).
direction(f,1,out).
modeb(f,2).

modeb(tail,2).
type(tail,0,list).
type(tail,1,list).
direction(tail,0,in).
direction(tail,1,out).

modeb(head,2).
type(head,0,list).
type(head,1,int).
direction(head,0,in).
direction(head,1,out).

modeb(last,2).
type(last,0,list).
type(last,1,int).
direction(last,0,in).
direction(last,1,out).

%% modeb(length,2).
%% type(length,0,list).
%% type(length,1,int).
%% direction(length,0,in).
%% direction(length,1,out).

modeb(sum,3).
type(sum,0,int).
type(sum,1,int).
type(sum,2,int).
direction(sum,0,in).
direction(sum,1,in).
direction(sum,2,out).

modeb(cons,3).
type(cons,0,int).
type(cons,1,list).
type(cons,2,list).
direction(cons,0,in).
direction(cons,1,in).
direction(cons,2,out).

modeb(empty,1).
type(empty,0,list).
direction(empty,0,in).

modeb(zero,1).
type(zero,0,int).
direction(zero,0,in).

modeb(succ,2).
type(succ,0,int).
type(succ,1,int).
direction(succ,0,in).
direction(succ,1,out).



#show var/4.
#show literal/4.