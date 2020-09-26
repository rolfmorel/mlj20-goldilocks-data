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

#pos(p1, {f(w(16,27),w(16,80)),f(w(15,36),w(15,80)),f(w(68,30),w(68,80)),f(w(59,46),w(59,80)),f(w(68,49),w(68,80)),f(w(28,72),w(28,80)),f(w(29,47),w(29,80)),f(w(68,79),w(68,80)),f(w(61,11),w(61,80)),f(w(55,44),w(55,80)),f(w(14,33),w(14,80)),f(w(42,66),w(42,80)),f(w(9,32),w(9,80)),f(w(27,63),w(27,80)),f(w(54,22),w(54,80)),f(w(75,79),w(75,80)),f(w(72,62),w(72,80)),f(w(31,6),w(31,80)),f(w(1,7),w(1,80)),f(w(10,24),w(10,80))}, {f(w(74,76),w(11,39)),f(w(44,61),w(9,74)),f(w(78,18),w(52,80)),f(w(15,61),w(7,60)),f(w(25,59),w(70,80)),f(w(73,49),w(80,44)),f(w(21,75),w(7,11)),f(w(72,49),w(1,59)),f(w(12,62),w(23,66)),f(w(49,57),w(67,78)),f(w(62,32),w(39,80)),f(w(44,71),w(77,14)),f(w(38,45),w(4,76)),f(w(57,64),w(60,5)),f(w(66,52),w(51,76)),f(w(31,2),w(52,16)),f(w(45,46),w(4,36)),f(w(80,8),w(2,20)),f(w(4,75),w(79,17)),f(w(60,30),w(24,72))}).
