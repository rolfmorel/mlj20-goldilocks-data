size(10).
position(1..10).
#maxv(3).
#modeh(f(var(state),var(state)), (positive)).
#modeb(3,move_up(var(state),var(state)), (anti_reflexive,symmetric,positive)).
#modeb(3,move_down(var(state),var(state)), (anti_reflexive,symmetric,positive)).
#modeb(3,move_left(var(state),var(state)), (anti_reflexive,symmetric,positive)).
#modeb(3,move_right(var(state),var(state)), (anti_reflexive,symmetric,positive)).
#modeb(3,f(var(state),var(state)), (anti_reflexive,symmetric,positive)).
#modeb(3,at_top(var(state)), (positive)).
#modeb(3,at_bottom(var(state)), (positive)).
#modeb(3,at_left(var(state)), (positive)).
#modeb(3,at_right(var(state)), (positive)).


#bias(":- occurs(V, X), #false : occurs(V, Y), Y != X.").
#bias("occurs(X, f(X, Y)) :- head(f(X, Y)).").
#bias("occurs(X, f(Y, X)) :- head(f(Y, X)).").
#bias("occurs(X, f(X, Y)) :- body(f(X, Y)).").
#bias("occurs(X, f(Y, X)) :- body(f(Y, X)).").
#bias("occurs(X, at_top(X)) :- body(at_top(X)).").
#bias("occurs(X, at_bottom(X)) :- body(at_bottom(X)).").
#bias("occurs(X, at_left(X)) :- body(at_left(X)).").
#bias("occurs(X, at_right(X)) :- body(at_right(X)).").
#bias("occurs(X, move_up(X, Y)) :- body(move_up(X, Y)).").
#bias("occurs(X, move_left(X, Y)) :- body(move_left(X, Y)).").
#bias("occurs(X, move_right(X, Y)) :- body(move_right(X, Y)).").
#bias("occurs(X, move_down(X, Y)) :- body(move_down(X, Y)).").
#bias("occurs(X, move_up(Y, X)) :- body(move_up(Y, X)).").
#bias("occurs(X, move_left(Y, X)) :- body(move_left(Y, X)).").
#bias("occurs(X, move_right(Y, X)) :- body(move_right(Y, X)).").
#bias("occurs(X, move_down(Y, X)) :- body(move_down(Y, X)).").
move_right(w(X1,Y),w(X2,Y)):-
    position(X1),
    position(X2),
    position(Y),
    X2 = X1 + 1.

move_left(w(X1,Y),w(X2,Y)):-
    position(X1),
    position(X2),
    position(Y),
    X2 = X1 - 1.

move_up(w(X,Y1),w(X,Y2)):-
    position(X),
    position(Y1),
    position(Y2),
    Y2 = Y1 + 1.

move_down(w(X,Y1),w(X,Y2)):-
    position(X),
    position(Y1),
    position(Y2),
    Y2 = Y1 - 1.

at_left(w(1,Y)):-
    position(Y).
at_right(w(X,Y)):-
    size(X),
    position(Y).
at_top(w(X,Y)):-
    position(X),
    size(Y).
at_bottom(w(X,1)):-
    position(X).

#pos(p1, {f(w(7,5),w(7,10)),f(w(9,5),w(9,10)),f(w(8,3),w(8,10)),f(w(7,3),w(7,10)),f(w(10,8),w(10,10)),f(w(6,1),w(6,10)),f(w(7,4),w(7,10)),f(w(8,7),w(8,10)),f(w(9,5),w(9,10)),f(w(2,5),w(2,10)),f(w(8,9),w(8,10)),f(w(5,1),w(5,10)),f(w(7,1),w(7,10)),f(w(8,9),w(8,10)),f(w(5,4),w(5,10)),f(w(2,5),w(2,10)),f(w(8,3),w(8,10)),f(w(10,1),w(10,10)),f(w(9,7),w(9,10)),f(w(6,9),w(6,10))}, {f(w(7,4),w(5,9)),f(w(5,1),w(6,10)),f(w(4,3),w(2,4)),f(w(4,7),w(10,5)),f(w(10,7),w(1,6)),f(w(2,9),w(5,10)),f(w(4,9),w(5,5)),f(w(4,10),w(10,9)),f(w(8,7),w(2,1)),f(w(9,10),w(4,10)),f(w(7,2),w(2,10)),f(w(4,9),w(8,10)),f(w(3,6),w(6,10)),f(w(2,5),w(4,7)),f(w(7,6),w(2,2)),f(w(2,9),w(1,10)),f(w(10,5),w(9,3)),f(w(7,10),w(7,4)),f(w(6,8),w(7,5)),f(w(10,4),w(2,4))}).
