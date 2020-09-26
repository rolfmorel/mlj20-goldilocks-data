max_vars(7).
max_body(5).
max_clauses(2).

qsort(A,B):-
    empty(A),
    empty(B).
qsort(A,B):-
    head(A,C),
    partition(C,A,D,E),
    qsort(D,F),
    qsort(E,G),
    append(F,G,B).

modeh(f,2).
type(f,0,list).
type(f,1,list).
direction(f,0,in).
direction(f,1,out).
modeb(f,2).

functional(head,2).
functional(tail,2).
functional(append,3).
functional(partition,4).

irreflexive(head,2).
irreflexive(tail,2).
irreflexive(append,3).
irreflexive(partition,4).

modeb(partition,4).
type(partition,0,element).
type(partition,1,list).
type(partition,2,list).
type(partition,3,list).
direction(partition,0,in).
direction(partition,1,in).
direction(partition,2,out).
direction(partition,3,out).

modeb(append,4).
type(append,0,list).
type(append,1,list).
type(append,2,list).
direction(append,0,in).
direction(append,1,in).
direction(append,2,out).

modeb(head,2).
type(head,0,list).
type(head,1,int).
direction(head,0,in).
direction(head,1,out).

modeb(empty_in,1).
type(empty_in,0,list).
direction(empty_in,0,in).

modeb(empty_out,1).
type(empty_out,0,list).
direction(empty_out,0,out).