size(30).
position(1..30).
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

#pos(p1, {f(w(1,28),w(1,30)),f(w(13,8),w(13,30)),f(w(20,22),w(20,30)),f(w(10,8),w(10,30)),f(w(11,7),w(11,30)),f(w(19,23),w(19,30)),f(w(6,22),w(6,30)),f(w(20,24),w(20,30)),f(w(19,29),w(19,30)),f(w(1,7),w(1,30)),f(w(16,9),w(16,30)),f(w(22,17),w(22,30)),f(w(6,6),w(6,30)),f(w(24,22),w(24,30)),f(w(13,19),w(13,30)),f(w(20,22),w(20,30)),f(w(28,9),w(28,30)),f(w(19,11),w(19,30)),f(w(17,29),w(17,30)),f(w(30,10),w(30,30))}, {f(w(7,12),w(25,30)),f(w(24,3),w(5,5)),f(w(3,9),w(19,28)),f(w(21,12),w(28,11)),f(w(11,5),w(15,4)),f(w(25,6),w(4,11)),f(w(30,19),w(27,13)),f(w(14,27),w(6,12)),f(w(4,4),w(14,30)),f(w(2,30),w(9,3)),f(w(20,11),w(30,19)),f(w(13,10),w(23,8)),f(w(5,16),w(21,7)),f(w(27,25),w(11,27)),f(w(6,17),w(7,13)),f(w(6,6),w(1,30)),f(w(28,7),w(20,1)),f(w(21,7),w(22,1)),f(w(9,12),w(18,2)),f(w(10,18),w(10,14))}).
