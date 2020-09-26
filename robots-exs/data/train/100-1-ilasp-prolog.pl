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

#pos(p1, {f(w(4,3),w(4,30)),f(w(19,17),w(19,30)),f(w(25,17),w(25,30)),f(w(11,21),w(11,30)),f(w(8,1),w(8,30)),f(w(27,4),w(27,30)),f(w(6,15),w(6,30)),f(w(13,7),w(13,30)),f(w(13,29),w(13,30)),f(w(10,15),w(10,30)),f(w(28,19),w(28,30)),f(w(6,21),w(6,30)),f(w(19,25),w(19,30)),f(w(1,7),w(1,30)),f(w(9,7),w(9,30)),f(w(21,26),w(21,30)),f(w(13,4),w(13,30)),f(w(19,27),w(19,30)),f(w(9,15),w(9,30)),f(w(10,10),w(10,30)),f(w(21,4),w(21,30)),f(w(20,1),w(20,30)),f(w(2,27),w(2,30)),f(w(16,20),w(16,30)),f(w(16,23),w(16,30)),f(w(17,16),w(17,30)),f(w(6,27),w(6,30)),f(w(22,29),w(22,30)),f(w(8,29),w(8,30)),f(w(26,6),w(26,30)),f(w(4,20),w(4,30)),f(w(9,16),w(9,30)),f(w(11,12),w(11,30)),f(w(9,27),w(9,30)),f(w(17,23),w(17,30)),f(w(8,15),w(8,30)),f(w(22,23),w(22,30)),f(w(12,14),w(12,30)),f(w(22,9),w(22,30)),f(w(23,22),w(23,30)),f(w(7,23),w(7,30)),f(w(17,21),w(17,30)),f(w(19,22),w(19,30)),f(w(7,10),w(7,30)),f(w(21,25),w(21,30)),f(w(3,29),w(3,30)),f(w(12,14),w(12,30)),f(w(2,24),w(2,30)),f(w(2,26),w(2,30)),f(w(1,9),w(1,30)),f(w(20,13),w(20,30)),f(w(19,2),w(19,30)),f(w(11,10),w(11,30)),f(w(24,29),w(24,30)),f(w(28,16),w(28,30)),f(w(27,27),w(27,30)),f(w(4,9),w(4,30)),f(w(10,16),w(10,30)),f(w(13,10),w(13,30)),f(w(30,3),w(30,30)),f(w(29,14),w(29,30)),f(w(1,9),w(1,30)),f(w(10,5),w(10,30)),f(w(24,14),w(24,30)),f(w(12,20),w(12,30)),f(w(4,15),w(4,30)),f(w(12,7),w(12,30)),f(w(26,20),w(26,30)),f(w(22,14),w(22,30)),f(w(28,7),w(28,30)),f(w(5,8),w(5,30)),f(w(19,25),w(19,30)),f(w(8,17),w(8,30)),f(w(28,19),w(28,30)),f(w(26,22),w(26,30)),f(w(29,4),w(29,30)),f(w(13,8),w(13,30)),f(w(25,16),w(25,30)),f(w(14,7),w(14,30)),f(w(26,26),w(26,30)),f(w(6,26),w(6,30)),f(w(24,25),w(24,30)),f(w(27,29),w(27,30)),f(w(27,25),w(27,30)),f(w(13,24),w(13,30)),f(w(24,3),w(24,30)),f(w(30,26),w(30,30)),f(w(26,4),w(26,30)),f(w(26,11),w(26,30)),f(w(26,11),w(26,30)),f(w(8,21),w(8,30)),f(w(22,29),w(22,30)),f(w(4,9),w(4,30)),f(w(30,29),w(30,30)),f(w(8,12),w(8,30)),f(w(14,3),w(14,30)),f(w(24,6),w(24,30)),f(w(30,29),w(30,30)),f(w(28,12),w(28,30)),f(w(1,29),w(1,30))}, {f(w(5,16),w(22,6)),f(w(20,23),w(29,30)),f(w(23,6),w(13,5)),f(w(28,1),w(19,18)),f(w(14,14),w(5,30)),f(w(29,22),w(25,6)),f(w(28,12),w(24,6)),f(w(11,10),w(7,30)),f(w(14,21),w(2,22)),f(w(3,14),w(20,23)),f(w(15,25),w(25,28)),f(w(15,29),w(16,14)),f(w(22,13),w(2,30)),f(w(27,27),w(11,30)),f(w(27,30),w(30,23)),f(w(16,16),w(21,12)),f(w(27,10),w(10,3)),f(w(13,6),w(30,21)),f(w(16,2),w(16,13)),f(w(5,9),w(25,26)),f(w(30,25),w(30,11)),f(w(25,13),w(11,30)),f(w(28,23),w(4,19)),f(w(26,3),w(30,24)),f(w(19,21),w(16,29)),f(w(30,27),w(13,30)),f(w(3,3),w(27,30)),f(w(23,29),w(16,30)),f(w(5,18),w(6,30)),f(w(20,21),w(23,27)),f(w(3,23),w(10,12)),f(w(18,8),w(12,8)),f(w(27,25),w(11,4)),f(w(23,26),w(15,25)),f(w(7,11),w(5,30)),f(w(23,30),w(16,29)),f(w(1,2),w(28,30)),f(w(18,19),w(7,5)),f(w(5,22),w(4,14)),f(w(3,19),w(14,10)),f(w(13,4),w(6,16)),f(w(18,5),w(22,30)),f(w(14,13),w(15,4)),f(w(15,15),w(16,30)),f(w(1,11),w(17,16)),f(w(15,26),w(13,2)),f(w(2,28),w(2,22)),f(w(11,14),w(10,20)),f(w(15,11),w(3,16)),f(w(20,1),w(1,13)),f(w(19,12),w(19,19)),f(w(20,30),w(13,2)),f(w(30,18),w(11,13)),f(w(10,11),w(23,1)),f(w(1,15),w(1,8)),f(w(30,6),w(7,10)),f(w(29,5),w(5,3)),f(w(27,18),w(16,30)),f(w(17,11),w(9,30)),f(w(23,4),w(4,13)),f(w(19,7),w(30,8)),f(w(3,18),w(4,2)),f(w(16,7),w(5,7)),f(w(25,10),w(20,3)),f(w(20,18),w(1,22)),f(w(30,7),w(28,16)),f(w(24,5),w(1,15)),f(w(28,26),w(14,16)),f(w(10,12),w(23,2)),f(w(24,27),w(3,29)),f(w(20,18),w(30,12)),f(w(20,19),w(15,13)),f(w(30,16),w(18,22)),f(w(6,27),w(15,9)),f(w(17,18),w(16,8)),f(w(30,10),w(17,21)),f(w(23,7),w(28,12)),f(w(30,23),w(7,30)),f(w(29,6),w(13,30)),f(w(5,29),w(9,8)),f(w(27,10),w(22,30)),f(w(28,18),w(5,19)),f(w(24,6),w(25,8)),f(w(15,16),w(16,30)),f(w(14,5),w(17,17)),f(w(16,22),w(17,18)),f(w(3,17),w(28,30)),f(w(5,9),w(17,30)),f(w(25,29),w(25,23)),f(w(25,11),w(24,16)),f(w(11,3),w(2,11)),f(w(25,12),w(29,25)),f(w(6,3),w(6,2)),f(w(22,14),w(15,21)),f(w(18,9),w(1,7)),f(w(1,29),w(6,2)),f(w(13,21),w(19,7)),f(w(6,28),w(12,5)),f(w(14,27),w(26,29)),f(w(2,17),w(3,7))}).
