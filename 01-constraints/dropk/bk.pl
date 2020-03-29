cons(A,B,C):-
    append([A],B,C).
tail([_|T],T).
head([H|_],H).
sum(A,B,C):-
    C is A+B.
empty([]).
zero(0).
one(1).
equal(A,A).
decrement(A,B):-
    B is A-1.

mylen(A,B):-
    nonvar(B),!,
    B > 0,
    length(A,B).

mylen(A,B):-
    length(A,B).