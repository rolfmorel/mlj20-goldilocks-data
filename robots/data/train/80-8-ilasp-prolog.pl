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

#pos(p1, {f(w(73,2),w(73,80)),f(w(72,51),w(72,80)),f(w(25,68),w(25,80)),f(w(28,6),w(28,80)),f(w(10,47),w(10,80)),f(w(3,32),w(3,80)),f(w(79,67),w(79,80)),f(w(53,4),w(53,80)),f(w(47,22),w(47,80)),f(w(29,38),w(29,80)),f(w(76,44),w(76,80)),f(w(6,75),w(6,80)),f(w(54,68),w(54,80)),f(w(28,78),w(28,80)),f(w(46,8),w(46,80)),f(w(33,4),w(33,80)),f(w(21,15),w(21,80)),f(w(66,43),w(66,80)),f(w(37,35),w(37,80)),f(w(49,66),w(49,80))}, {f(w(48,26),w(29,30)),f(w(72,40),w(23,16)),f(w(23,42),w(30,47)),f(w(16,1),w(23,6)),f(w(11,36),w(56,80)),f(w(34,54),w(14,37)),f(w(44,61),w(62,80)),f(w(44,12),w(42,68)),f(w(79,6),w(53,80)),f(w(73,65),w(66,61)),f(w(68,18),w(69,80)),f(w(48,9),w(1,8)),f(w(77,41),w(35,71)),f(w(9,71),w(29,37)),f(w(20,61),w(53,80)),f(w(44,3),w(53,51)),f(w(71,54),w(33,80)),f(w(73,74),w(33,44)),f(w(15,23),w(70,61)),f(w(11,13),w(17,37))}).
