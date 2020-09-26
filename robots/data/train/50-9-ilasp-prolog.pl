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

#pos(p1, {f(w(18,23),w(18,50)),f(w(38,40),w(38,50)),f(w(44,23),w(44,50)),f(w(18,9),w(18,50)),f(w(31,46),w(31,50)),f(w(19,12),w(19,50)),f(w(19,34),w(19,50)),f(w(49,8),w(49,50)),f(w(34,13),w(34,50)),f(w(46,7),w(46,50)),f(w(45,47),w(45,50)),f(w(36,1),w(36,50)),f(w(47,35),w(47,50)),f(w(25,1),w(25,50)),f(w(16,9),w(16,50)),f(w(48,38),w(48,50)),f(w(30,3),w(30,50)),f(w(38,47),w(38,50)),f(w(26,49),w(26,50)),f(w(37,12),w(37,50))}, {f(w(47,7),w(40,31)),f(w(48,27),w(36,39)),f(w(25,8),w(44,50)),f(w(10,2),w(47,42)),f(w(14,39),w(2,50)),f(w(38,13),w(30,16)),f(w(7,11),w(16,50)),f(w(46,21),w(43,43)),f(w(28,22),w(21,5)),f(w(46,18),w(20,50)),f(w(10,6),w(14,10)),f(w(49,28),w(44,39)),f(w(9,21),w(7,12)),f(w(3,15),w(48,21)),f(w(38,21),w(20,11)),f(w(38,31),w(35,45)),f(w(27,13),w(42,9)),f(w(8,4),w(48,50)),f(w(28,41),w(46,23)),f(w(12,49),w(18,33))}).
