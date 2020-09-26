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

#pos(p1, {f(w(5,42),w(5,100)),f(w(3,15),w(3,100)),f(w(65,76),w(65,100)),f(w(4,44),w(4,100)),f(w(51,1),w(51,100)),f(w(29,22),w(29,100)),f(w(99,40),w(99,100)),f(w(33,4),w(33,100)),f(w(4,66),w(4,100)),f(w(8,31),w(8,100)),f(w(73,39),w(73,100)),f(w(33,54),w(33,100)),f(w(32,68),w(32,100)),f(w(24,6),w(24,100)),f(w(72,36),w(72,100)),f(w(99,86),w(99,100)),f(w(81,59),w(81,100)),f(w(53,25),w(53,100)),f(w(22,37),w(22,100)),f(w(69,17),w(69,100))}, {f(w(2,89),w(87,89)),f(w(21,63),w(89,45)),f(w(89,89),w(46,100)),f(w(80,64),w(45,37)),f(w(38,99),w(12,100)),f(w(61,61),w(19,50)),f(w(77,34),w(44,37)),f(w(83,32),w(50,77)),f(w(36,24),w(64,100)),f(w(37,66),w(59,64)),f(w(74,62),w(4,89)),f(w(12,28),w(84,100)),f(w(50,17),w(13,100)),f(w(86,29),w(44,20)),f(w(70,14),w(34,37)),f(w(96,19),w(33,95)),f(w(73,95),w(64,65)),f(w(93,87),w(18,43)),f(w(65,58),w(53,100)),f(w(81,75),w(58,100))}).
