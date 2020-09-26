size(50).
position(1..50).
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

#pos(p1, {f(w(21,44),w(21,50)),f(w(45,22),w(45,50)),f(w(11,28),w(11,50)),f(w(2,25),w(2,50)),f(w(38,42),w(38,50)),f(w(38,6),w(38,50)),f(w(44,40),w(44,50)),f(w(17,4),w(17,50)),f(w(33,24),w(33,50)),f(w(31,7),w(31,50)),f(w(4,33),w(4,50)),f(w(44,18),w(44,50)),f(w(19,16),w(19,50)),f(w(41,1),w(41,50)),f(w(14,20),w(14,50)),f(w(46,5),w(46,50)),f(w(19,14),w(19,50)),f(w(10,49),w(10,50)),f(w(35,31),w(35,50)),f(w(20,42),w(20,50))}, {f(w(27,13),w(23,3)),f(w(24,28),w(20,10)),f(w(25,20),w(3,46)),f(w(20,14),w(24,17)),f(w(12,42),w(5,15)),f(w(48,3),w(49,30)),f(w(14,25),w(48,24)),f(w(44,23),w(25,40)),f(w(11,25),w(38,8)),f(w(37,43),w(8,50)),f(w(30,27),w(22,3)),f(w(28,24),w(17,50)),f(w(36,2),w(21,33)),f(w(10,22),w(40,3)),f(w(41,32),w(30,46)),f(w(18,33),w(27,41)),f(w(9,37),w(1,43)),f(w(33,37),w(5,50)),f(w(6,5),w(33,43)),f(w(39,28),w(12,50))}).
