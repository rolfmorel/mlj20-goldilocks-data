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

#pos(p1, {f(w(28,14),w(28,30)),f(w(3,12),w(3,30)),f(w(11,29),w(11,30)),f(w(14,13),w(14,30)),f(w(1,21),w(1,30)),f(w(25,3),w(25,30)),f(w(22,26),w(22,30)),f(w(23,3),w(23,30)),f(w(13,28),w(13,30)),f(w(25,18),w(25,30)),f(w(20,13),w(20,30)),f(w(26,15),w(26,30)),f(w(13,28),w(13,30)),f(w(14,2),w(14,30)),f(w(25,14),w(25,30)),f(w(29,10),w(29,30)),f(w(10,19),w(10,30)),f(w(21,2),w(21,30)),f(w(9,27),w(9,30)),f(w(11,29),w(11,30)),f(w(18,1),w(18,30)),f(w(2,27),w(2,30)),f(w(11,8),w(11,30)),f(w(21,22),w(21,30)),f(w(28,14),w(28,30)),f(w(29,6),w(29,30)),f(w(6,28),w(6,30)),f(w(15,16),w(15,30)),f(w(21,19),w(21,30)),f(w(8,5),w(8,30)),f(w(13,10),w(13,30)),f(w(7,23),w(7,30)),f(w(5,15),w(5,30)),f(w(20,27),w(20,30)),f(w(23,2),w(23,30)),f(w(23,18),w(23,30)),f(w(19,9),w(19,30)),f(w(27,17),w(27,30)),f(w(4,23),w(4,30)),f(w(16,6),w(16,30)),f(w(4,4),w(4,30)),f(w(26,24),w(26,30)),f(w(11,5),w(11,30)),f(w(4,12),w(4,30)),f(w(15,21),w(15,30)),f(w(16,8),w(16,30)),f(w(7,29),w(7,30)),f(w(11,8),w(11,30)),f(w(22,8),w(22,30)),f(w(28,15),w(28,30))}, {f(w(30,17),w(13,20)),f(w(11,8),w(1,23)),f(w(29,19),w(4,30)),f(w(17,4),w(27,27)),f(w(16,13),w(22,26)),f(w(22,26),w(4,28)),f(w(22,11),w(29,30)),f(w(24,30),w(25,25)),f(w(16,29),w(13,27)),f(w(25,8),w(12,8)),f(w(16,22),w(26,24)),f(w(10,5),w(15,13)),f(w(30,8),w(29,21)),f(w(14,11),w(17,23)),f(w(6,7),w(29,23)),f(w(22,6),w(1,17)),f(w(3,6),w(20,25)),f(w(9,9),w(23,30)),f(w(10,4),w(29,30)),f(w(9,6),w(8,30)),f(w(25,19),w(11,10)),f(w(22,2),w(5,14)),f(w(2,13),w(15,30)),f(w(30,3),w(26,27)),f(w(5,10),w(10,30)),f(w(7,11),w(13,19)),f(w(11,25),w(25,3)),f(w(3,9),w(2,30)),f(w(30,28),w(17,19)),f(w(30,22),w(5,30)),f(w(30,10),w(26,15)),f(w(6,23),w(14,30)),f(w(18,15),w(25,13)),f(w(13,9),w(20,30)),f(w(15,22),w(17,30)),f(w(10,16),w(5,2)),f(w(19,30),w(4,30)),f(w(21,13),w(19,5)),f(w(28,13),w(18,15)),f(w(21,18),w(30,8)),f(w(7,4),w(19,30)),f(w(30,18),w(6,30)),f(w(5,28),w(24,7)),f(w(19,18),w(1,30)),f(w(22,8),w(14,11)),f(w(2,30),w(25,20)),f(w(18,4),w(27,28)),f(w(4,16),w(24,17)),f(w(14,22),w(3,6)),f(w(17,12),w(25,12))}).
