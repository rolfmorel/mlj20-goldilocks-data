size(100).
position(1..100).
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

#pos(p1, {f(w(22,55),w(22,100)),f(w(66,4),w(66,100)),f(w(9,76),w(9,100)),f(w(40,44),w(40,100)),f(w(59,3),w(59,100)),f(w(88,62),w(88,100)),f(w(14,98),w(14,100)),f(w(7,35),w(7,100)),f(w(95,96),w(95,100)),f(w(22,54),w(22,100)),f(w(3,34),w(3,100)),f(w(57,46),w(57,100)),f(w(10,99),w(10,100)),f(w(2,27),w(2,100)),f(w(77,91),w(77,100)),f(w(67,87),w(67,100)),f(w(61,77),w(61,100)),f(w(97,62),w(97,100)),f(w(99,51),w(99,100)),f(w(24,14),w(24,100))}, {f(w(66,65),w(88,100)),f(w(17,4),w(77,100)),f(w(5,94),w(36,100)),f(w(68,65),w(64,56)),f(w(27,34),w(36,31)),f(w(6,60),w(78,65)),f(w(37,70),w(63,100)),f(w(94,61),w(75,43)),f(w(87,32),w(20,79)),f(w(70,14),w(90,37)),f(w(68,82),w(83,65)),f(w(68,51),w(95,82)),f(w(77,79),w(36,45)),f(w(11,71),w(78,55)),f(w(61,72),w(68,20)),f(w(47,33),w(51,77)),f(w(24,75),w(29,41)),f(w(82,27),w(27,100)),f(w(70,12),w(33,100)),f(w(34,57),w(84,72))}).
