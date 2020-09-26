size(80).
position(1..80).
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

#pos(p1, {f(w(59,19),w(59,80)),f(w(6,54),w(6,80)),f(w(26,19),w(26,80)),f(w(61,60),w(61,80)),f(w(50,35),w(50,80)),f(w(48,41),w(48,80)),f(w(3,76),w(3,80)),f(w(46,79),w(46,80)),f(w(3,13),w(3,80)),f(w(21,35),w(21,80)),f(w(6,47),w(6,80)),f(w(7,53),w(7,80)),f(w(2,38),w(2,80)),f(w(39,27),w(39,80)),f(w(9,3),w(9,80)),f(w(8,72),w(8,80)),f(w(13,38),w(13,80)),f(w(72,52),w(72,80)),f(w(68,73),w(68,80)),f(w(73,27),w(73,80))}, {f(w(75,31),w(72,30)),f(w(62,32),w(10,47)),f(w(36,62),w(14,80)),f(w(1,11),w(6,67)),f(w(56,67),w(19,2)),f(w(32,4),w(56,14)),f(w(44,23),w(73,50)),f(w(12,21),w(6,65)),f(w(65,53),w(6,72)),f(w(52,71),w(74,2)),f(w(19,14),w(44,80)),f(w(76,22),w(27,24)),f(w(1,28),w(2,11)),f(w(63,58),w(33,71)),f(w(26,70),w(76,35)),f(w(15,62),w(20,27)),f(w(10,74),w(21,18)),f(w(20,1),w(75,18)),f(w(10,7),w(73,80)),f(w(42,79),w(25,19))}).
