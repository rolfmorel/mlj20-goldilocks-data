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

#pos(p1, {f(w(84,35),w(84,100)),f(w(22,49),w(22,100)),f(w(46,58),w(46,100)),f(w(61,38),w(61,100)),f(w(86,71),w(86,100)),f(w(87,17),w(87,100)),f(w(71,22),w(71,100)),f(w(42,52),w(42,100)),f(w(99,70),w(99,100)),f(w(98,54),w(98,100)),f(w(32,86),w(32,100)),f(w(54,57),w(54,100)),f(w(100,62),w(100,100)),f(w(92,35),w(92,100)),f(w(9,86),w(9,100)),f(w(49,46),w(49,100)),f(w(23,55),w(23,100)),f(w(79,55),w(79,100)),f(w(16,61),w(16,100)),f(w(69,94),w(69,100))}, {f(w(43,58),w(92,62)),f(w(67,72),w(55,23)),f(w(63,100),w(68,76)),f(w(40,35),w(15,80)),f(w(7,44),w(19,36)),f(w(3,70),w(1,92)),f(w(38,71),w(93,52)),f(w(55,30),w(10,78)),f(w(89,26),w(42,100)),f(w(94,78),w(93,100)),f(w(67,95),w(1,42)),f(w(82,63),w(35,68)),f(w(99,33),w(4,61)),f(w(98,26),w(63,100)),f(w(32,10),w(69,38)),f(w(94,2),w(7,73)),f(w(87,54),w(41,28)),f(w(71,34),w(42,33)),f(w(96,53),w(81,100)),f(w(11,60),w(22,90))}).
