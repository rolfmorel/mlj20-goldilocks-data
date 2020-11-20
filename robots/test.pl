:- use_module(library(clpfd)).

f(A,B) :- move_up(A,B).
f(A,B) :- move_up(A,C),f(C,B).
%time,36.04105281829834

at_left(w(1,_)).

at_bottom(w(_,1)).

at_top(w(_,Y)):-
    size(Y).
at_right(w(X,_)):-
    size(X).

move_right(w(X1,Y),w(X2,Y)):-
    size(Size),
    X1 #< Size,
    X2 #= X1 + 1.

move_left(w(X1,Y),w(X2,Y)):-
    X1 #> 1,
    X2 #= X1 - 1.

move_up(w(X,Y1),w(X,Y2)):-
    size(Size),
    Y1 #< Size,
    Y2 #= Y1 + 1.

move_down(w(X,Y1),w(X,Y2)):-
    Y1 #> 1,
    Y2 #= Y1 - 1.


a:-
    forall(pos(f(S1,S2)),f(S1,S2)).

b:-
    forall(neg(f(S1,S2)),\+f(S1,S2)).

size(10).
position(1..10).
pos(f(w(7,5),w(7,10))).
pos(f(w(9,5),w(9,10))).
pos(f(w(8,3),w(8,10))).
pos(f(w(7,3),w(7,10))).
pos(f(w(10,8),w(10,10))).
pos(f(w(6,1),w(6,10))).
pos(f(w(7,4),w(7,10))).
pos(f(w(8,7),w(8,10))).
pos(f(w(9,5),w(9,10))).
pos(f(w(2,5),w(2,10))).
pos(f(w(8,9),w(8,10))).
pos(f(w(5,1),w(5,10))).
pos(f(w(7,1),w(7,10))).
pos(f(w(8,9),w(8,10))).
pos(f(w(5,4),w(5,10))).
pos(f(w(2,5),w(2,10))).
pos(f(w(8,3),w(8,10))).
pos(f(w(10,1),w(10,10))).
pos(f(w(9,7),w(9,10))).
pos(f(w(6,9),w(6,10))).
neg(f(w(7,4),w(5,9))).
neg(f(w(5,1),w(6,10))).
neg(f(w(4,3),w(2,4))).
neg(f(w(4,7),w(10,5))).
neg(f(w(10,7),w(1,6))).
neg(f(w(2,9),w(5,10))).
neg(f(w(4,9),w(5,5))).
neg(f(w(4,10),w(10,9))).
neg(f(w(8,7),w(2,1))).
neg(f(w(9,10),w(4,10))).
neg(f(w(7,2),w(2,10))).
neg(f(w(4,9),w(8,10))).
neg(f(w(3,6),w(6,10))).
neg(f(w(2,5),w(4,7))).
neg(f(w(7,6),w(2,2))).
neg(f(w(2,9),w(1,10))).
neg(f(w(10,5),w(9,3))).
neg(f(w(7,10),w(7,4))).
neg(f(w(6,8),w(7,5))).
neg(f(w(10,4),w(2,4))).
