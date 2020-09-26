size(90).
position(1..90).
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

#pos(p1, {f(w(46,23),w(46,90)),f(w(12,1),w(12,90)),f(w(89,76),w(89,90)),f(w(20,39),w(20,90)),f(w(68,79),w(68,90)),f(w(63,62),w(63,90)),f(w(23,21),w(23,90)),f(w(82,18),w(82,90)),f(w(82,50),w(82,90)),f(w(2,66),w(2,90)),f(w(77,71),w(77,90)),f(w(25,89),w(25,90)),f(w(63,38),w(63,90)),f(w(40,38),w(40,90)),f(w(9,60),w(9,90)),f(w(59,9),w(59,90)),f(w(9,54),w(9,90)),f(w(67,68),w(67,90)),f(w(55,74),w(55,90)),f(w(64,57),w(64,90))}, {f(w(74,59),w(49,57)),f(w(23,78),w(27,9)),f(w(15,66),w(72,33)),f(w(22,43),w(11,80)),f(w(77,56),w(16,17)),f(w(77,64),w(49,90)),f(w(14,17),w(18,21)),f(w(21,87),w(83,47)),f(w(32,17),w(1,76)),f(w(84,32),w(5,11)),f(w(52,28),w(33,90)),f(w(69,78),w(2,63)),f(w(56,80),w(10,65)),f(w(84,28),w(35,22)),f(w(79,8),w(54,90)),f(w(16,62),w(10,33)),f(w(4,20),w(56,84)),f(w(41,89),w(27,90)),f(w(49,90),w(5,61)),f(w(35,71),w(86,57))}).
