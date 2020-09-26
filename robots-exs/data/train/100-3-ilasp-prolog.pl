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

#pos(p1, {f(w(1,27),w(1,30)),f(w(25,8),w(25,30)),f(w(25,14),w(25,30)),f(w(11,28),w(11,30)),f(w(19,21),w(19,30)),f(w(5,10),w(5,30)),f(w(5,23),w(5,30)),f(w(2,24),w(2,30)),f(w(1,12),w(1,30)),f(w(6,24),w(6,30)),f(w(17,10),w(17,30)),f(w(24,1),w(24,30)),f(w(22,14),w(22,30)),f(w(21,21),w(21,30)),f(w(26,7),w(26,30)),f(w(24,7),w(24,30)),f(w(22,21),w(22,30)),f(w(3,5),w(3,30)),f(w(17,13),w(17,30)),f(w(13,28),w(13,30)),f(w(24,4),w(24,30)),f(w(5,26),w(5,30)),f(w(4,29),w(4,30)),f(w(26,29),w(26,30)),f(w(21,17),w(21,30)),f(w(24,12),w(24,30)),f(w(15,9),w(15,30)),f(w(7,9),w(7,30)),f(w(4,9),w(4,30)),f(w(27,29),w(27,30)),f(w(7,15),w(7,30)),f(w(4,19),w(4,30)),f(w(4,25),w(4,30)),f(w(11,5),w(11,30)),f(w(11,14),w(11,30)),f(w(23,2),w(23,30)),f(w(1,14),w(1,30)),f(w(4,24),w(4,30)),f(w(7,15),w(7,30)),f(w(15,11),w(15,30)),f(w(17,23),w(17,30)),f(w(17,28),w(17,30)),f(w(9,12),w(9,30)),f(w(27,13),w(27,30)),f(w(19,27),w(19,30)),f(w(8,16),w(8,30)),f(w(25,7),w(25,30)),f(w(13,9),w(13,30)),f(w(1,28),w(1,30)),f(w(16,28),w(16,30)),f(w(13,20),w(13,30)),f(w(12,21),w(12,30)),f(w(5,28),w(5,30)),f(w(2,25),w(2,30)),f(w(30,29),w(30,30)),f(w(13,16),w(13,30)),f(w(15,16),w(15,30)),f(w(4,21),w(4,30)),f(w(3,19),w(3,30)),f(w(14,3),w(14,30)),f(w(12,24),w(12,30)),f(w(26,24),w(26,30)),f(w(12,20),w(12,30)),f(w(30,11),w(30,30)),f(w(4,6),w(4,30)),f(w(6,2),w(6,30)),f(w(19,28),w(19,30)),f(w(2,19),w(2,30)),f(w(10,29),w(10,30)),f(w(19,15),w(19,30)),f(w(6,22),w(6,30)),f(w(6,27),w(6,30)),f(w(23,26),w(23,30)),f(w(13,3),w(13,30)),f(w(29,14),w(29,30)),f(w(9,15),w(9,30)),f(w(19,6),w(19,30)),f(w(23,19),w(23,30)),f(w(18,4),w(18,30)),f(w(4,8),w(4,30)),f(w(10,28),w(10,30)),f(w(9,25),w(9,30)),f(w(6,29),w(6,30)),f(w(13,27),w(13,30)),f(w(26,7),w(26,30)),f(w(13,5),w(13,30)),f(w(28,11),w(28,30)),f(w(13,21),w(13,30)),f(w(16,11),w(16,30)),f(w(7,25),w(7,30)),f(w(1,7),w(1,30)),f(w(30,16),w(30,30)),f(w(9,5),w(9,30)),f(w(17,6),w(17,30)),f(w(2,24),w(2,30)),f(w(30,15),w(30,30)),f(w(22,29),w(22,30)),f(w(15,6),w(15,30)),f(w(4,24),w(4,30)),f(w(4,14),w(4,30))}, {f(w(1,22),w(9,23)),f(w(7,12),w(10,30)),f(w(24,18),w(18,26)),f(w(25,9),w(3,9)),f(w(5,2),w(1,30)),f(w(7,4),w(7,5)),f(w(28,30),w(14,30)),f(w(6,28),w(22,15)),f(w(29,1),w(28,8)),f(w(9,6),w(3,24)),f(w(19,23),w(28,11)),f(w(22,27),w(18,18)),f(w(5,20),w(12,30)),f(w(23,21),w(15,8)),f(w(13,10),w(30,1)),f(w(2,28),w(12,9)),f(w(10,17),w(17,30)),f(w(23,17),w(20,30)),f(w(28,5),w(5,27)),f(w(3,25),w(2,30)),f(w(30,6),w(15,30)),f(w(4,22),w(1,29)),f(w(1,10),w(25,30)),f(w(30,11),w(28,5)),f(w(13,13),w(15,14)),f(w(23,20),w(2,30)),f(w(20,30),w(11,10)),f(w(7,30),w(12,30)),f(w(21,4),w(5,30)),f(w(5,3),w(13,6)),f(w(1,4),w(1,28)),f(w(21,9),w(28,12)),f(w(26,28),w(28,30)),f(w(25,7),w(11,2)),f(w(14,1),w(4,30)),f(w(27,30),w(23,1)),f(w(2,4),w(9,3)),f(w(23,11),w(11,22)),f(w(8,13),w(11,2)),f(w(9,8),w(6,27)),f(w(3,4),w(24,1)),f(w(2,6),w(15,15)),f(w(1,9),w(20,17)),f(w(5,9),w(26,17)),f(w(26,2),w(25,9)),f(w(26,28),w(16,10)),f(w(11,8),w(15,13)),f(w(21,12),w(17,7)),f(w(20,15),w(1,21)),f(w(17,19),w(10,13)),f(w(8,5),w(22,24)),f(w(14,13),w(1,24)),f(w(25,5),w(18,9)),f(w(5,3),w(7,6)),f(w(5,14),w(19,30)),f(w(5,8),w(2,9)),f(w(25,27),w(17,23)),f(w(14,11),w(8,23)),f(w(12,20),w(12,2)),f(w(5,6),w(4,30)),f(w(30,23),w(1,14)),f(w(7,4),w(23,28)),f(w(5,24),w(26,30)),f(w(25,23),w(15,30)),f(w(20,11),w(29,27)),f(w(2,19),w(23,20)),f(w(15,20),w(10,14)),f(w(23,29),w(10,19)),f(w(23,22),w(1,8)),f(w(17,2),w(7,21)),f(w(2,15),w(28,3)),f(w(29,14),w(26,14)),f(w(30,21),w(14,5)),f(w(3,19),w(27,30)),f(w(12,28),w(28,16)),f(w(13,17),w(16,11)),f(w(5,28),w(21,24)),f(w(21,30),w(8,2)),f(w(14,25),w(29,30)),f(w(4,15),w(6,29)),f(w(16,28),w(30,30)),f(w(3,16),w(13,15)),f(w(1,29),w(5,4)),f(w(7,26),w(4,17)),f(w(12,4),w(14,29)),f(w(12,2),w(22,16)),f(w(19,11),w(21,23)),f(w(10,10),w(6,30)),f(w(1,19),w(23,4)),f(w(26,8),w(7,30)),f(w(22,27),w(4,24)),f(w(13,6),w(8,14)),f(w(19,9),w(17,8)),f(w(11,8),w(7,11)),f(w(30,16),w(26,30)),f(w(23,17),w(22,5)),f(w(16,30),w(12,2)),f(w(29,24),w(18,16)),f(w(21,11),w(17,5)),f(w(24,26),w(27,30))}).
