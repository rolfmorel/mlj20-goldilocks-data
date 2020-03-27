max_vars(5).
max_body(10).
max_clauses(2).

%% DROPK
%% dropk(A,B,C):-
%%     zero(B),
%%     equal(A,C).
%% dropk(A,B,C):-
%%     tail(A,D),
%%     decrement(B,E),
%%     dropk(D,E,C).

%% NEED TO EVENTUALLY ADD THIS CONSTRAINT TO THE MAIN ALAN ENCODING
%% PREVENT RECURSION IN THE FIRST CLAUSE
:-
    modeh(P,A),
    body_literal(0,_,P,A).

modeh(f,3).
type(f,0,list).
type(f,1,int).
type(f,2,list).
direction(f,0,in).
direction(f,1,in).
direction(f,2,out).
modeb(f,3).

modeb(tail,2).
type(tail,0,list).
type(tail,1,list).
direction(tail,0,in).
direction(tail,1,out).

modeb(head,2).
type(head,0,list).
type(head,1,element).
direction(head,0,in).
direction(head,1,out).

modeb(last,2).
type(last,0,list).
type(last,1,element).
direction(last,0,in).
direction(last,1,out).

modeb(mylen,2).
type(mylen,0,list).
type(mylen,1,int).
direction(mylen,0,in).
direction(mylen,1,out).

modeb(sum,3).
type(sum,0,int).
type(sum,1,int).
type(sum,2,int).
direction(sum,0,in).
direction(sum,1,in).
direction(sum,2,out).

modeb(cons,3).
type(cons,0,element).
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

modeb(decrement,2).
type(decrement,0,int).
type(decrement,1,int).
direction(decrement,0,in).
direction(decrement,1,out).

modeb(equal,2).
type(equal,0,list).
type(equal,1,list).
direction(equal,0,in).
direction(equal,1,out).

#show var/4.
#show literal/4.