max_vars(5).
max_body(5).
max_clauses(2).


%% functional(head,2).
%% functional(tail,2).
%% functional(last,2).
%% functional(length,2).

%% irreflexive(head,2).
%% irreflexive(tail,2).
%% irreflexive(last,2).
%% irreflexive(length,2).
%% :-
%%     body_literal(_,_,_,(V1,V2)),
%%     V1 > V2.

%% FIRST TWO EVEN OR FIRST TWO ODD
%% f(A):-head(A,B),even(B),tail(A,C),head(C,D),even(D).
%% f(A):-head(A,B),odd(B),tail(A,C),head(C,D),odd(D).

%% f(A):-head(A,B),tail(A,C),head(C,A),even(A).

%% f(A):-head(A,B),tail(A,C),head(C,A),tail(C,D),head(D,A).

%% UNCOMMENT BELOW TO FIND THE SOLUTION
%% :-
%%     %% head(A,B)
%%     clause(C),
%%     not body_literal(C,head,_,(0,1)).

modeh(f,1).
type(f,0,list).
direction(f,0,in).
%% modeb(f,2).

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

modeb(length,2).
type(length,0,list).
type(length,1,int).
direction(length,0,in).
direction(length,1,out).

%% modeb(sum,3).
%% type(sum,0,int).
%% type(sum,1,int).
%% type(sum,2,int).
%% direction(sum,0,in).
%% direction(sum,1,in).
%% direction(sum,2,out).

%% modeb(cons,3).
%% type(cons,0,element).
%% type(cons,1,list).
%% type(cons,2,list).
%% direction(cons,0,in).
%% direction(cons,1,in).
%% direction(cons,2,out).

modeb(empty,1).
type(empty,0,list).
direction(empty,0,in).

modeb(zero,1).
type(zero,0,element).
direction(zero,0,in).

modeb(even,1).
type(even,0,element).
direction(even,0,in).

modeb(odd,1).
type(odd,0,element).
direction(odd,0,in).

%% #show var/4.
%% #show literal/4.